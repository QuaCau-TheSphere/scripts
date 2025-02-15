rm process* -recurse
gci -directory | Foreach-Object {
	$folder = $_.name
	"Folder: " + $folder
	New-Item -Name processed_$folder -ItemType "directory" 
	New-Item -Name processed_transparent_$folder -ItemType "directory" 
	cd $folder
	# get-location
	gci -file | Foreach-Object {
		$out="new"+$_.name
		"Input: " + $_.name + "`nOutput: " + $out
		# Get-location
		$bgWidth = $(magick identify -format %w $_.name) -as [float] 
		$bgHeight = $(magick  identify -format %h $_.name) -as [float]
		$logoWidth = $bgWidth*0.05*2 -as [float]     #5% of the width is nicely fit. 
		$logoHeight = $bgHeight*0.05*2 -as [float]   #You just need to multiply it if needed.
		$logoOffset = $bgWidth*0.01*2
		
		cd ../processed_$folder
		magick "..\Logo\Movers.png" -resize x$logoHeight logo1_resized.png
		magick "..\Logo\Hải Đăng.png" -resize x$logoHeight logo2_resized.png
		magick convert logo1_resized.png logo2_resized.png +append logo_stacked.png
		magick $_ logo_stacked.png -gravity northeast -geometry +$logoOffset+$logoOffset -composite $out
		magick $_ logo_stacked.png -compose multiply -gravity northeast -geometry +$logoOffset+$logoOffset -composite transparent_$out
		
		# cd ../processed_transparent_$folder
		# magick ../processed_$folder/logo_stacked.png -fill white -colorize 25% logo_stacked_transparent.png 
		# magick $_ logo_stacked_transparent.png -gravity northeast -geometry +$logoOffset+$logoOffset -composite $out
		
		cd ../$folder
	} 
	cd ..
}