require 'ffi-fluidsynth'

settings =  FluidSynth::new_fluid_settings
synth =  FluidSynth::new_fluid_synth(settings)
driver = FluidSynth::new_fluid_audio_driver(settings, synth)
player = FluidSynth::new_fluid_player(synth)
puts "init done"
sf = FluidSynth::synth_sfload(synth, "example.sf2", 1)
puts "soundfont done"
FluidSynth::player_add(player, "badboys_xg.mid")
puts "add done"
FluidSynth::player_play(player)
puts "play done"
sleep 10
puts "stop start"
FluidSynth::player_stop(player)
FluidSynth::delete_fluid_player(player)
player = FluidSynth::new_fluid_player(synth)
FluidSynth::player_add(player, "badboys_xg.mid")
puts "stop done"
puts "play start"
FluidSynth::player_play(player)
puts "play done"
sleep 10
