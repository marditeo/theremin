#ifndef SYNTH_CONTROL_UTILS_H
#define SYNTH_CONTROL_UTILS_H

#include "../../common/src/synth_control.h"

// init with default ranges and instrument
void initSynthControl(synth_control_ptr_t control);
void synthControl_initPitchSensor(synth_control_ptr_t control, uint32_t maxSensorPeriod, uint32_t minSensorPeriod, float linearizationK);
void synthControl_initVolumeSensor(synth_control_ptr_t control, uint32_t maxSensorPeriod, uint32_t minSensorPeriod, float linearizationK);
void synthControl_setNoteRange(synth_control_ptr_t control, int32_t minNote, int32_t maxNote);
void synthControl_setVolumeRange(synth_control_ptr_t control, float muteDist);


void synthControl_setDefautFilter(synth_control_ptr_t control);
// set filter from custom float table (SYNTH_CONTROL_FILTER_TABLE_SIZE elements in table)
void synthControl_setFilterAmp(synth_control_ptr_t control, float * table);
// inits flat filter (SYNTH_CONTROL_FILTER_TABLE_SIZE elements in table)
void synthControl_initFlatFilter(float * table);
void synthControl_addFilterFormant(float * table, float middleFrequency, float width, float amp);

void synthControl_setSimpleAdditiveSynth(synth_control_ptr_t control, float evenAmp, float oddAmp, float evenPow, float oddPow, uint32_t phaseInc);

void synthControl_setAdditiveSquare(synth_control_ptr_t control, float amp);
void synthControl_setAdditiveTriangle(synth_control_ptr_t control, float amp);
void synthControl_setAdditiveSawtooth(synth_control_ptr_t control, float amp);


void synthControl_setAmpModulation(synth_control_ptr_t control, float amount, float freqAdd, uint16_t freqDiv);
void synthControl_setFreqModulation(synth_control_ptr_t control, float amount, float freqAdd, uint16_t freqDiv);

float noteToFrequency(int32_t note);
int32_t frequencyToNote(float freq);
uint32_t noteToPhaseIncrement(int32_t note);

// double precision

double noteToFrequencyD(int32_t note);
uint32_t noteToPhaseIncrementD(int32_t note);

struct SensorConvertor {
    // sensor output (period value) when hand is at far distance from antenna
    uint32_t minValue;
    // sensor output (period value) when hand is at near to antenna
    uint32_t maxValue;
    // valueRange = maxValue - minValue (negative)
    int32_t valueRange;
    // 1 / valueRange
    float invValueRange;
    // k1 is linearity transform coefficient: exponent range exp(0..k1) <-> log(0)..log(exp(k1)) is used
    float k1;
    // 1/k1
    float invK1;
    // exp(k1)
    float expk1;
    // exp(k1) - exp(0)
    float expkDiff;
    // 1/expkDiff
    float invExpkDiff;
    SensorConvertor(uint32_t minv, uint32_t maxv, float linK1);
    void setLinK(float linK1);
    void setRange(uint32_t minv, uint32_t maxv);
    void updateTables();
    uint32_t linearToPeriod(float v);
    float periodToLinear(uint32_t v);
};



#endif // SYNTH_CONTROL_UTILS_H
