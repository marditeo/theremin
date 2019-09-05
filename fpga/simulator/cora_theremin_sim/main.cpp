#include "mainwindow.h"
#include <QApplication>

#include "simulator_impl.h"
#include "../../theremin_sdk/theremin/src/lcd_screen.h"
#include "../../theremin_sdk/theremin/src/bitmap_fonts.h"
#include "../../theremin_sdk/synthesizer/src/synthesizer.h"

int main(int argc, char *argv[])
{
    thereminIO_init();

    //thereminLCD_setFramebufferAddress(SCREEN_BUF);
    lcd_init();
    lcd_fill_rect(6, 5, 120, 50, 0x0f84);
    lcd_fill_rect(5, 55, 121, 100, 0x058e);


    for (int x = 50; x < SCREEN_DX; x+=5) {
        lcd_draw_line(5, 5, x, SCREEN_DY-1, 0x305020);
    }

    lcd_draw_text(BIG_FONT, 100, 50, 0xff0, "Hello world! BIG", -32768);
    lcd_draw_text(MEDIUM_FONT, 10, 10, 0x0f0, "Hello world! MEDIUM", -32768);
    lcd_draw_text(SMALL_FONT, 10, 200, 0x0ff, "Hello world! SMALL", -32768);

    lcd_draw_text(BIG_FONT, 100, 80, 0xfff, "WWWwww", -32768);



    lcd_flush();

    thereminAudio_setIrqHandler(&synth_audio_irq);
    thereminAudio_enableIrq();

    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    return a.exec();
}
