package;

//I'm fucking lazy, pls don't kill me ourple guy team :(

#if desktop
import Discord.DiscordClient;
#end
import Shaders;
import WeekData;
import editors.ChartingState;
import flash.text.TextField;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.display.FlxTiledSprite;
import flixel.addons.transition.FlxTransitionableState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.system.FlxAssets;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import lime.utils.Assets;
import openfl.filters.ShaderFilter;
import openfl.utils.Assets as OpenFlAssets;

using StringTools;
#if MODS_ALLOWED
import sys.FileSystem;
#end


class FPClientPrefs
{
    public static var beatenAllDemoSongs:String = 'Incomplete';

    public static var isolatedSong:String = 'Incomplete';
    public static var lunacySong:String = 'Incomplete';
    public static var twistedSong:String = 'Incomplete';
    public static var huntedLock:String = 'locked';
    public static var oldisolateLock:String = 'locked';
    public static var malfunctionLock:String = 'locked';
    public static var sinsLock:String = 'locked';

    public static function lockinIt() {
        if (FlxG.save.data.beatenAllDemoSongs == null) FlxG.save.data.beatenAllDemoSongs == 'Incomplete';

        if (FlxG.save.data.isolatedSong == null) FlxG.save.data.isolatedSong == 'Incomplete';
        if (FlxG.save.data.lunacySong == null) FlxG.save.data.lunacySong == 'Incomplete';
        if (FlxG.save.data.twistedSong == null) FlxG.save.data.twistedSong == 'Incomplete';

        if (FlxG.save.data.huntedLock == null) FlxG.save.data.huntedLock = 'locked';
        if (FlxG.save.data.oldisolateLock == null) FlxG.save.data.oldisolateLock = 'locked';
        if (FlxG.save.data.malfunctionLock == null) FlxG.save.data.malfunctionLock = 'locked';
        if (FlxG.save.data.sinsLock == null) FlxG.save.data.sinsLock = 'locked';
        FlxG.save.flush();
    }

    public static function saveShit() {
        FlxG.save.data.beatenAllDemoSongs = beatenAllDemoSongs;

        FlxG.save.data.isolatedSong = isolatedSong;
        FlxG.save.data.lunacySong = lunacySong;
        FlxG.save.data.twistedSong = twistedSong;

        FlxG.save.data.huntedLock = huntedLock;
        FlxG.save.data.oldisolateLock = oldisolateLock;
        FlxG.save.data.malfunctionLock = malfunctionLock;
        FlxG.save.data.sinsLock = sinsLock;
        FlxG.save.flush();
    }

    public static function loadShit() {

        isolatedSong = FlxG.save.data.isolatedSong;
        lunacySong = FlxG.save.data.lunacySong;
        twistedSong = FlxG.save.data.twistedSong;
        huntedLock = FlxG.save.data.huntedLock;
        oldisolateLock = FlxG.save.data.oldisolateLock;
        malfunctionLock = FlxG.save.data.malfunctionLock;
        sinsLock = FlxG.save.data.sinsLock;
        FlxG.save.flush();
    }
}