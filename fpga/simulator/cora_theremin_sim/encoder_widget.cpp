#include "encoder_widget.h"

#include <QPainter>
#include <QMouseEvent>
#include <QDebug>

EncoderWidget::EncoderWidget(int encoderIndex, QWidget *parent)
    : QWidget(parent), index(encoderIndex), angle(0), angleNormal(0), anglePressed(0), pressed(false)
{
    setMinimumWidth(60);
    setMaximumWidth(60);
    setMinimumHeight(60);
    setMaximumHeight(60);
}

#define M_PI 3.14159265
void EncoderWidget::paintEvent(QPaintEvent *event) {
    Q_UNUSED(event)
    QPainter painter(this);
    QBrush circleBrush(pressed ? 0x0000ff : 0x6060e0);
    QBrush markBrush(pressed ? 0x0000ff : 0x8080ff);
    QPen circlePen(circleBrush, 4);
    QPen markPen(markBrush, 4);
    painter.setRenderHint(QPainter::Antialiasing, true);
    painter.setPen(circlePen);
    int x0 = width() / 2;
    int y0 = height() / 2;
    int rx = width() * 45 / 100;
    int ry = height() * 45 / 100;
    if (rx > ry)
        rx = ry;
    else if (rx < ry)
        ry = rx;
    //painter.drawArc(x0-rx, y0-ry, rx*2, ry*2, 0*16, 360*16);

    painter.setBrush(QBrush(pressed ? 0xe0c0c0 : 0xe0e0e0));
    painter.drawEllipse(x0-rx, y0-ry, rx*2, ry*2);

    int ticks = 24;
    int a = ((angle) % ticks) - ticks / 4;
    double fAngle = a * 2 * M_PI / ENCODER_TICKS;
    double angleSin = sin(fAngle);
    double angleCos = cos(fAngle);

    int x1 = x0 + static_cast<int>(angleCos * 0.45 * rx);
    int y1 = y0 + static_cast<int>(angleSin * 0.45 * ry);
    int x2 = x0 + static_cast<int>(angleCos * 0.75 * rx);
    int y2 = y0 + static_cast<int>(angleSin * 0.75 * ry);

    painter.setPen(markPen);
    painter.drawLine(x1, y1, x2, y2);
}


void EncoderWidget::mousePressEvent(QMouseEvent *event) {
    if (event->button() == Qt::LeftButton || event->button() == Qt::MiddleButton) {
        setPressed(true);
    }
}
void EncoderWidget::mouseReleaseEvent(QMouseEvent *event) {
    if (event->button() == Qt::LeftButton || event->button() == Qt::MiddleButton) {
        setPressed(false);
    }
}
void EncoderWidget::mouseMoveEvent(QMouseEvent *event) {
    if (event->buttons() & Qt::LeftButton) {
    }
}

void EncoderWidget::wheelEvent(QWheelEvent *event) {
    int step = QWheelEvent::DefaultDeltasPerStep;
    int delta = event->delta() / step;
    if (!event->inverted())
        delta = -delta;
    if (pressed)
        anglePressed += delta;
    else
        angleNormal += delta;
    angleNormal = (angleNormal + ENCODER_TICKS*2) % ENCODER_TICKS;
    anglePressed = (anglePressed + ENCODER_TICKS*2) % ENCODER_TICKS;
    setAngle(angle + delta);
    qDebug("wheel delta %d  angle=%d angleNormal=%d anglePressed=%d pressed=%d",
           delta, angle, angleNormal, anglePressed, pressed ? 1 : 0);
}

