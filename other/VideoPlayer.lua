local video = {}

video.play = function(url, sound)
	if url:find("webm") then
		if sound then
			start = tick()
			a = game:HttpGet(url)
			b = game:HttpGet(sound)
			writefile("video.webm", a)
			writefile("sound.mp3", b)
			ending = tick()
			print("Should start playing. Download took: " .. (ending - start))
			s = Instance.new("ScreenGui")
			s.Parent = game.CoreGui
			s.Name = url:gsub("http://", ""):gsub("https://", "")
			v = Instance.new("VideoFrame", s)
			v.Size = UDim2.new(1, 0, 1.1, 0)
			v.Position = UDim2.new(0, 0, 0, -33)
			v.Video = getsynasset("video.webm")
			ss = Instance.new("Sound", workspace)
			ss.SoundId = getsynasset("sound.mp3")
			v:Play()
			v.Volume = 0
			ss:Play()
		else
			start = tick()
			a = game:HttpGet(url)
			writefile("video.webm", a)
			ending = tick()
			print("Should start playing. Download took: " .. (ending - start) .. " seconds.")
			s = Instance.new("ScreenGui")
			s.Parent = game.CoreGui
			s.Name = url:gsub("http://", ""):gsub("https://", "")
			v = Instance.new("VideoFrame", s)
			v.Size = UDim2.new(1, 0, 1.1, 0)
			v.Position = UDim2.new(0, 0, 0, -33)
			v.Video = getsynasset("video.webm")
			v:Play()
		end
	else
		error("Invalid video format. Must be .webm")
	end
end
video.playLocal = function(url, sound)
	if url:find("webm") then
		if sound then
			s = Instance.new("ScreenGui")
			s.Parent = game.CoreGui
			s.Name = url:gsub("http://", ""):gsub("https://", "")
			v = Instance.new("VideoFrame", s)
			v.Size = UDim2.new(1, 0, 1.1, 0)
			v.Position = UDim2.new(0, 0, 0, -33)
			v.Video = getsynasset(url)
			ss = Instance.new("Sound", workspace)
			ss.SoundId = getsynasset(sound)
			v:Play()
			v.Volume = 0
			ss:Play()
		else
			s = Instance.new("ScreenGui")
			s.Parent = game.CoreGui
			s.Name = url:gsub("http://", ""):gsub("https://", "")
			v = Instance.new("VideoFrame", s)
			v.Size = UDim2.new(1, 0, 1.1, 0)
			v.Position = UDim2.new(0, 0, 0, -33)
			v.Video = getsynasset(url)
			v:Play()
		end
	else
		error("Invalid video format. Must be .webm")
	end
end
video.help = function()
	print([[
    
Video Player Library
(Very simple, made by Agent)

Usage:

video.play("https://builderman.pro/pub/qsil9.webm")  -- MUST BE WEBM 
video.playLocal('path/to/video.webm') -- LOCAL FILES 

to play custom sound just do video.play("vide","sound") must be mp3 works for playLocal too 
]])
end

return video
