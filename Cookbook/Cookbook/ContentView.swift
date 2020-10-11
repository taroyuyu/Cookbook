import AudioKit
import AVFoundation
import SwiftUI

struct ContentView: View {
    @State private var dates = [Date]()

    var body: some View {
        NavigationView {
            MasterView()
            DetailView()
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct MasterView: View {
    var body: some View {
        Form {
            Section(header: Text("Mini Apps")) {
                Section {
                    NavigationLink(destination: DrumsView()) { Text("Drum Pads") }
                    NavigationLink(destination: DrumSequencerView()) { Text("Drum Sequencer") }
                    NavigationLink(destination: MusicToyView()) { Text("Music Toy") }
                    NavigationLink(destination: Telephone()) { Text("Telephone") }
                    NavigationLink(destination: TunerView()) { Text("Tuner") }
                    NavigationLink(destination: NoiseGeneratorsView()) { Text("Noise Generators") }
                    NavigationLink(destination: VocalTractView()) { Text("Vocal Tract") }
                    NavigationLink(destination: MIDIMonitorView()) { Text("MIDI Monitor") }
                    NavigationLink(destination: RecorderView()) { Text("Recorder") }
                    // TODO
                    // Text("Level Meter")
                    // Text("Metronome")
                    // Text("Sequencer")
                }
            }

            Section(header: Text("Operations")) {
                NavigationLink(destination: PitchShiftOperationView()) { Text("Pitch Shift Operation") }
                NavigationLink(destination: VariableDelayOperationView()) { Text("Variable Delay Operation") }
                NavigationLink(destination: VocalTractOperationView()) { Text("Vocal Fun") }
            }

            Section(header: Text("Effects")) {
                Section {
                    NavigationLink(destination: AutoPannerView()) { Text("Auto Panner") }
                    NavigationLink(destination: AutoWahView()) { Text("Auto Wah") }
                    NavigationLink(destination: ChorusView()) { Text("Chorus") }
                    NavigationLink(destination: DelayView()) { Text("Delay") }
                    NavigationLink(destination: DynamicRangeCompressorView()) { Text("Dynamic Range Compressor") }
                    NavigationLink(destination: FlangerView()) { Text("Flanger") }
                    NavigationLink(destination: PannerView()) { Text("Panner") }
                    NavigationLink(destination: PhaserView()) { Text("Phaser") }
                    NavigationLink(destination: PhaseLockedVocoderView()) { Text("Phase-Locked Vocoder") }
                    NavigationLink(destination: PitchShifterView()) { Text("Pitch Shifter") }
                }
                Section {
                    NavigationLink(destination: StringResonatorView()) { Text("String Resonator") }
                    NavigationLink(destination: TremoloView()) { Text("Tremolo") }
                    NavigationLink(destination: VariableDelayView()) { Text("Variable Delay") }
                }
            }
            Section(header: Text("Distortion")) {
                NavigationLink(destination: BitCrusherView()) { Text("Bit Crusher") }
                NavigationLink(destination: ClipperView()) { Text("Clipper") }
                NavigationLink(destination: TanhDistortionView()) { Text("Tanh Distortion") }
            }
            Section(header: Text("Reverb")) {
                NavigationLink(destination: ChowningReverbView()) { Text("Chowning Reverb") }
                NavigationLink(destination: CombFilterReverbView()) { Text("Comb Filter Reverb") }
                NavigationLink(destination: CostelloReverbView()) { Text("Costello Reverb") }
                NavigationLink(destination: FlatFrequencyResponseReverbView()) { Text("Flat Frequency Response Reverb") }
                NavigationLink(destination: ZitaReverbView()) { Text("Zita Reverb") }
            }
            Section(header: Text("Filters")) {
                Section {
                    NavigationLink(destination: BandPassButterworthFilterView()) { Text("Band Pass Butterworth Filter") }
                    NavigationLink(destination: BandRejectButterworthFilterView()) { Text("Band Reject Butterworth Filter") }
                    NavigationLink(destination: EqualizerFilterView()) { Text("Equalizer Filter") }
                    NavigationLink(destination: FormantFilterView()) { Text("Formant Filter") }
                    NavigationLink(destination: HighPassButterworthFilterView()) { Text("High Pass Butterworth Filter") }
                    NavigationLink(destination: HighPassFilterView()) { Text("High Pass Filter") }
                    NavigationLink(destination: HighShelfFilterView()) { Text("High Shelf Filter") }
                    NavigationLink(destination: HighShelfParametricEqualizerFilterView()) { Text("High Shelf Parametric Equalizer Filter") }
                    NavigationLink(destination: KorgLowPassFilterView()) { Text("Korg Low Pass Filter") }
                    NavigationLink(destination: LowPassButterworthFilterView()) { Text("Low Pass Butterworth Filter") }
                }
                Section {
                    NavigationLink(destination: LowPassFilterView()) { Text("Low Pass Filter") }
                    NavigationLink(destination: LowShelfFilterView()) { Text("Low Shelf Filter") }
                    NavigationLink(destination: LowShelfParametricEqualizerFilterView()) { Text("Low Shelf Parametric Equalizer Filter") }
                    NavigationLink(destination: ModalResonanceFilterView()) { Text("Modal Resonance Filter") }
                    NavigationLink(destination: MoogLadderView()) { Text("Moog Ladder") }
                    NavigationLink(destination: PeakingParametricEqualizerFilterView()) { Text("Peaking Parametric Equalizer Filter") }
                    NavigationLink(destination: ResonantFilterView()) { Text("Resonant Filter") }
                    NavigationLink(destination: RolandTB303FilterView()) { Text("Roland Tb303 Filter") }
                    NavigationLink(destination: ThreePoleLowpassFilterView()) { Text("Three Pole Lowpass Filter") }
                    NavigationLink(destination: ToneFilterView()) { Text("Tone Filter") }
                }
                Section {
                    NavigationLink(destination: ToneComplementFilterView()) { Text("Tone Complement Filter") }
                }
            }
            Section(header: Text("Oscillators")) {
                NavigationLink(destination: AmplitudeEnvelopeView()) { Text("Amplitude Envelope") }
                NavigationLink(destination: FMOscillatorView()) { Text("FM Frequency Modulation") }
                NavigationLink(destination: MorphingOscillatorView()) { Text("Waveform Morphing") }
                NavigationLink(destination: OscillatorView()) { Text("Sine") }
                NavigationLink(destination: PhaseDistortionOscillatorView()) { Text("Phase Distortion ") }
                NavigationLink(destination: PWMOscillatorView()) { Text("Pulse Width Modulation") }
            }

        }.navigationBarTitle(Text("AudioKit"))
    }
}

struct DetailView: View {
    var body: some View {
        ZStack { Text("Detail View") }.navigationBarTitle(Text("Examples"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
