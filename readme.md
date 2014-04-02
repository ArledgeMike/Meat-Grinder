Meat-Grinder
===========
<img src ="https://raw.github.com/ArledgeMike/Emperors-New-Clothes/master/images/meat-grinder.png" />


<h2>Copy to HTML grinder</h2> <p>Version 1.01 - sausage</p>
<p>Take your copywriter's MS-word files and grind them into HTML</p>
<p>Included in the version is a test MS-Word doc for you to grind into HTML. Meat grinder uses the basic copy tags to help assist copywriters mark up copy docs correctly and give their developers an edge on a very extremely tedious process.</p>

<h3>Marking up your MS-Word doc</h3>
<p>Open MS-Word and start a new document. You can start a new .docx if you need the complete MS-WORD editing suite.</p>
<p>Add one of the supported tags to the beginning of any of your paragraphs. List of supported tags below.</p>
<p>If you want to add a comment to the document put the comment in brackets "[]". Text in these brackets will not be added to the html markup</p>

<h3>How to make ordered/unordered lists</h3>
<p>In MS-Word right click on the item you want turned into a bullet and select the bullet normal bullet type</p>

<h3>Outputting your MS-Word doc</h3>
<p>Save your .docx format to ensure everything is secure. Next go to "File -> Save As" and save this file as ".txt" with the default settings</p>
<p>Open command line and cd to the directory that has the meat grinder</p>
<p>type "ruby generator.rb" and this will start the grinder and follow the command prompts. Your new HTML markup will be ground out to the same folder with the new file name you gave it.</p>

<h3>For the future</h3>
<p>This little grinder is not perfect and is only limited by your copywriter's knowledge of HTML. One big deal is wrapping the "<li>/" tags in a UL/OL tag(something that must be done by hand for now)</p> 