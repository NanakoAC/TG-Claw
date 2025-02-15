/datum/weather/cold_wave
	name = "cold wave"
	desc = "Harsh cold wave will grip an entire area."
	probability = 7

	telegraph_message = "<span class='userdanger'><i>Cold wave is coming to the area, decreasing temperature of anyone caught outside.</i></span>"
	telegraph_duration = 300
	telegraph_overlay = "snow_storm"
	telegraph_sound = 'sound/f13effects/sandstorm_warning.ogg'

	weather_message = "<span class='boldannounce'>The air suddenly gets very cold...</span>"
	weather_overlay = "snow_storm"
	weather_duration_lower = 600
	weather_duration_upper = 1500

	end_duration = 100
	end_message = "<span class='boldannounce'>The cold wave dies down, it should be safe to go outside again.</span>"

	area_type = /area/f13/wasteland
	protected_areas = list(/area/shuttle)
	target_trait = ZTRAIT_STATION

	immunity_type = "snow"

	barometer_predictable = TRUE

/datum/weather/cold_wave/weather_act(mob/living/L)
	L.adjust_bodytemperature(-rand(5, 15))
