struct ImageT
{
    var source: String
    var title: String
    var width: Int
    var height: Int

    init(source: String, title: String, width: Int, height: Int)
    {
        self.source = source
        self.title = title
        self.width = width
        self.height = height
    }

    func printImageT() -> String
    {
        return "IMAGE: Source: \(source), Title: \(title)"
    }
}

struct ColorT
{
    var red, green, blue: Double

    init(red: Double, green: Double, blue: Double)
    {
        self.red = red
        self.green = green
        self.blue = blue
    }

    func printColorT() -> String
    {
        return "COLOR: R:\(red), G:\(green), B:\(blue)"
    }
}

struct SongT
{
    var artistName: String
    var songPhoto: ImageT
    var songName: String

    init(artistName: String, songPhoto: ImageT, songName: String)
    {
        self.artistName = artistName
        self.songPhoto = songPhoto
        self.songName = songName
    }

    func printSongT() -> ()
    {
        print("SONG: \(songPhoto.printImageT()), Artist: \(artistName), Song title: \(songName)")
    }
}

enum SliderT 
{
    case horizontal
    case vertical
    case spherical
}

struct Slider 
{
    var type: SliderT
    var name: String
    var value: Int

    init(type: SliderT, name: String, value: Int)
    {
        self.type = type
        self.name = name
        self.value = value
    }

    func printSlider() -> ()
    {
        print("SLIDER: \(type), name: \(name), current value: \(value)")
    }
}

class Button
{
    var functionality: String
    var widthPX: Int
    var heightPX: Int
    var icon: ImageT
    var name: String

    init(functionality: String, widthPX: Int, heightPX: Int, icon: ImageT, name: String)
    {
        self.functionality = functionality
        self.widthPX = widthPX
        self.heightPX = heightPX
        self.icon = icon
        self.name = name
    }
    
    func printButton() -> ()
    {
        print("\(name), its size: \(widthPX)x\(heightPX), icon: \(icon.printImageT())")
    }
}

class Screen 
{
    var userName: String
    var backgroundColor: ColorT
    var width: Int
    var height: Int

    init(width: Int, height: Int, userName: String, backgroundColor: ColorT)
    {
        self.width = width
        self.height = height
        self.userName = userName
        self.backgroundColor = backgroundColor
    }

    func printAllInformations() -> ()
    {
        print("SCREEN: User \(userName), width: \(width), height: \(height), background color: \(backgroundColor.printColorT())")
    }
}

class SongScreen: Screen
{
    var sourceOfListening: String
    var encouragementText: String
    var songInformations: SongT
    var durationSlider: Slider
    var currentMoment: Int
    var wholeDuration: Int
    var minimizeButton: Button
    var optionsButton: Button
    var likeButton: Button
    var crossPlayButton: Button
    var previousSongButton: Button
    var nextSongButton: Button
    var pausePlayButton: Button
    var loopButton: Button
    var otherDevicesButton: Button
    var queueButton: Button

    init(sourceOfListening: String, encouragementText: String, songInformations: SongT, durationSlider: Slider, currentMoment: Int, wholeDuration: Int, minimizeButton: Button, optionsButton: Button, likeButton: Button, crossPlayButton: Button, previousSongButton: Button, nextSongButton: Button, pausePlayButton: Button, loopButton: Button, otherDevicesButton: Button, queueButton: Button, width: Int, height: Int, userName: String, backgroundColor: ColorT)
    {
        self.sourceOfListening = sourceOfListening
        self.encouragementText = encouragementText
        self.songInformations = songInformations
        self.durationSlider = durationSlider
        self.currentMoment = currentMoment
        self.wholeDuration = wholeDuration
        self.minimizeButton = minimizeButton
        self.optionsButton = optionsButton
        self.likeButton = likeButton
        self.crossPlayButton = crossPlayButton
        self.previousSongButton = previousSongButton
        self.nextSongButton = nextSongButton
        self.pausePlayButton = pausePlayButton
        self.loopButton = loopButton
        self.otherDevicesButton = otherDevicesButton
        self.queueButton = queueButton
        super.init(width: width, height: height, userName: userName, backgroundColor: backgroundColor)
    }

    override func printAllInformations() -> ()
    {
        super.printAllInformations()

        minimizeButton.printButton()
        
        printEncouragementText()
        printSourceOfListening()
        
        optionsButton.printButton()

        songInformations.printSongT()

        likeButton.printButton()

        durationSlider.printSlider()

        printIntDurationToPrettyFormCurrentMoment()
        printIntDurationToPrettyFormWholeDuration()

        crossPlayButton.printButton()
        previousSongButton.printButton()
        pausePlayButton.printButton()
        nextSongButton.printButton()
        loopButton.printButton()
        otherDevicesButton.printButton()
        queueButton.printButton()
    }

    func printIntDurationToPrettyFormCurrentMoment() -> ()
    {
        let whichMinute = currentMoment / 60
        let whichSecond = currentMoment - (60 * whichMinute)
        print("Current moment: \(whichMinute):\(whichSecond)")
    }    
    
    func printIntDurationToPrettyFormWholeDuration() -> ()
    {
        let minuteNumber = wholeDuration / 60
        let secondNumber = wholeDuration - (60 * minuteNumber)
        print("Whole duration: \(minuteNumber):\(secondNumber)")
    }    

    func printSourceOfListening() -> () 
    {
        print("Liked songs of \(super.userName)")
    }

    func printEncouragementText() -> () 
    {
        print("\(encouragementText)")
    }
}

var songScreen = SongScreen(sourceOfListening: "Polubione utwory", encouragementText: "Odtwarzaj z biblioteki", songInformations: SongT(artistName: "Joss Stone", songPhoto: ImageT(source: "mans_world_joss_stone.jpg", title: "mans_world_joss_stone", width: 200, height: 200), songName: "A Man's World"), durationSlider: Slider(type: SliderT.horizontal, name: "song_slider", value: 83), currentMoment: 83, wholeDuration: 216, minimizeButton: Button(functionality: "Minimize song screen.", widthPX: 10, heightPX: 10, icon: ImageT(source: "min_but.png", title: "min_img", width: 10, height: 10), name: "min_but"), optionsButton: Button(functionality: "Options button.", widthPX: 10, heightPX: 10, icon: ImageT(source: "opt_but.png", title: "opt_img", width: 10, height: 10), name: "opt_but"), likeButton: Button(functionality: "Like button.", widthPX: 10, heightPX: 10, icon: ImageT(source: "like_but.png", title: "like_img", width: 10, height: 10), name: "like_but"), crossPlayButton: Button(functionality: "Cross play button.", widthPX: 10, heightPX: 10, icon: ImageT(source: "crossplay_but.png", title: "crossplay_img", width: 10, height: 10), name: "crossplay_but"), previousSongButton: Button(functionality: "Previous song button.", widthPX: 15, heightPX: 15, icon: ImageT(source: "prev_song_but.png", title: "prev_song_img", width: 15, height: 15), name: "prev_song_but"), nextSongButton: Button(functionality: "Next song button.", widthPX: 15, heightPX: 15, icon: ImageT(source: "next_song_but.png", title: "next_song_img", width: 15, height: 15), name: "next_song_but"), pausePlayButton: Button(functionality: "Play-pause button.", widthPX: 25, heightPX: 25, icon: ImageT(source: "play_pause_but.png", title: "play_pause_img", width: 25, height: 25), name: "play_pause_but"), loopButton: Button(functionality: "Loop button.", widthPX: 10, heightPX: 10, icon: ImageT(source: "loop_but.png", title: "loop_img", width: 10, height: 10), name: "loop_but"), otherDevicesButton: Button(functionality: "Other devices button.", widthPX: 10, heightPX: 10, icon: ImageT(source: "other_devices_but.png", title: "other_devices_img", width: 10, height: 10), name: "other_devices_but"), queueButton: Button(functionality: "Queue button.", widthPX: 10, heightPX: 10, icon: ImageT(source: "queue_but.png", title: "queue_img", width: 10, height: 10), name: "queue_but"), width: 400, height: 800, userName: "Janek", backgroundColor: ColorT(red: 0.4, green: 0.8, blue: 1.0))

songScreen.printAllInformations()