function List-Pipes{
    <#
      .Synopsis
        Allows you to list current pipes 
       .Description
        The List-Pipes CMDlet is used to view currently executing or finished pipes.
       .Example
        Split-Pipe -Add {ScriptBlock},{ScriptBlock},{ScriptBlock}
        Splits the current pipe to continue down the pipeline and diverge to a provided scriptblock.
       .Parameter -Add
        The scriptblocks to diverge to.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
 }
 function Name-Pipe{
    <#
      .Synopsis
        Allows you to rename a pipe.
       .Description
        The Name-Pipe CMDlet is used to set a custom name for a pipe.
       .Example
        Split-Pipe -Add {ScriptBlock},{ScriptBlock},{ScriptBlock}
        Splits the current pipe to continue down the pipeline and diverge to a provided scriptblock.
       .Parameter -Old
        The old pipe name.
       .Parameter -New
        The new pipe name.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
 }
function Split-Pipe{
    <#
      .Synopsis
        Like a T-Splitter in plumbing. Allows you to split a pipeline. 
       .Description
        The Split-Pipe CMDlet is used to split a current pipe into as many threads as you want.
       .Example
        Split-Pipe -Add {ScriptBlock},{ScriptBlock},{ScriptBlock}
        Splits the current pipe to continue down the pipeline and diverge to a provided scriptblock.
       .Parameter -Add
        The scriptblocks to diverge to.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
 }
 function Start-Pipe{
     <#
      .Synopsis
        Like a T-Splitter in plumbing. Allows you to split a pipeline. 
       .Description
        The Start-Pipe CMDlet allows you to start with a split pipe.
       .Example
       .Example
        Start-Pipe -Main {ScriptBlock} -Splits {ScriptBlock},{ScriptBlock},{ScriptBlock}
        Creates a new multithreaded pipeline, the main line to return to and three split lines.
       .Parameter -Main
        The main operating pipeline scriptblock.
        .Parameter -Main
        The comma separated alterate pipeline scriptblocks.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
}
function Merge-Pipe{
     <#
      .Synopsis
        Like a Y-Splitter in plumbing. Allows you to merge a multithreaded pipeline. 
       .Description
        The Merge-Pipe CMDlet allows you to converge all pipes of your choice into a single pipe.
       .Example
        Merge-Pipe -Name Pipe0,Pipe1,Pipe2
        Merges the first three pipes.
       .Parameter -Name
        A comma separated list of pipes to merge.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
}