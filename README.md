# cnxMedia

Some small utilities to manage my multimedia files.

## cmp3info

Used to manage media file.

~~~~~
SYNTAX:

 - cmp3info -c            : Check for mp3 errors.
 - cmp3info -cat <file1> <file2> ... <dest>
                          : Cat mp3 files to dest mp3 file.
 - cmp3info -p            : Rename "filename" to "num - filename".
                            num is the track_number present in ID3tag.
 - cmp3info -r <file.txt> : Print a RYM tracklist.
 - cmp3info -t *.mp3      : Print CDDB file using mp3s tag.
 - cmp3info -n <main_dir> : Rename directory to "year - title" using
                            the stored txt file.
 - cmp3info -s            : Change files (644) and directories (755)
                            permissions in current directory.
 - cmp3info -h            : Print this help.

cmp3info uses some external programs.
Read NOTE comments in script code for details.

cmp3info may indent the txt file creating a symbolic link:
 - ln -s cmp3info freedb

SYNTAX (freedb):
 - freedb <file.txt>
~~~~~

## mediaCNXcover

Used to create media covers with LaTeX or cdlabelgen.

~~~~~
SINTAX [use latex]:
 mediaCNXcover [pdf] [tex] -i <img back> <img front>
 mediaCNXcover [pdf] [tex] -ibb <img back> <img back2>
 mediaCNXcover [pdf] [tex] -i2 <img back> <img front> <img infront>
 mediaCNXcover [pdf] [tex] -a33 <back> <front> <back> <front> <back> <front>
 mediaCNXcover [pdf] [tex] -a32 <back> <front> <infront> <back> <front> <infront>
 mediaCNXcover [pdf] [tex] -a3f <front> <front> <front> <front> <front> <front>
 mediaCNXcover [pdf] [tex] -dvd <vertical-dvd-cover> [-90]
 mediaCNXcover [pdf] [tex] -dvdslim <vertical-dvd-cover> [-90]
 mediaCNXcover -divideImage <image>

SINTAX [use cdlabelgen]:
 mediaCNXcover -cdl [-m] [-e] <img back> <img front> [img side]
 mediaCNXcover -cdl [-m] [-e] <img back> <img front> -a <artist_name> -t <album_title>
 mediaCNXcover -cdl [-m] [-e] <CDDB.txt> <img front> -a <artist_name> -t <album_title>

Others options:
   -pdf <name>
   -ps <name>
   -tex <name>
~~~~~


## simpleMP3tag

A simple MP3 tagger.

~~~~~
SYNTAX:

 - simpleMP3tag <file.txt>

The script take the list of mp3 files from current directory
and load TAG information from a text file.

The format is:

ARTIST :: ALBUM TITLE (YEAR)

1. title1
2. title2
....

The Number of mp3 files and tracks on txt file must be the same. 
The script uses mp3info and id3v2 to make the job.
~~~~~


## AUTHORS

Luciano Xumerle <luciano.xumerle@gmail.com>

Have fun!

