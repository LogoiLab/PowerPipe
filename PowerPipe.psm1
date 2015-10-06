$ModuleHome = Join-Path -Path ($Env:PSModulePath.split(";")[1]) -ChildPath "\PowerPipe\"
function New-Pipe{
     <#
      .Synopsis
        Allows you to create a named PipeBlock. 
       .Description
        The New-Pipe CMDlet allows create a new named pipe(kinda like aliases for pipes).
       .Example
        New-Pipe -Name "PipeName" -PipeBlock {ScriptBlock}
        Creates a new named PipeBlock called PipeName using the scriptblock you provide and stores it for later use.
       .Parameter -Name
        The name for the PipeBlock.
        .Parameter -PipeBlock
        The scriptblock that will become the PipeBlock.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
     Params(
     [parameter(Mandatory=$true)]
        [String]$Name,
     [parameter(Mandatory=$true)]
        [ScriptBlock]$PipeBlock
     )
     $pipetemp = {$Name,$PipeBlock}
     $pipetemp | ConvertTo-Xml | 
}
function Get-Pipe{
     <#
      .Synopsis
        Allows you to retrieve the result of a pipe. 
       .Description
        The Get-Pipe CMDlet allows you to view the end result of an executed pipe.
       .Example
        Set-Pipe -Name "PipeName"
        Changes the value of the PipeBlock "PipeName".
       .Parameter -Name
        The name for the PipeBlock you wish to modify.
       .Outputs
        Pipeline variable("$_")
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
     Params(
     [parameter(Mandatory=$true)]
        [String]$Name
     )
}
function Set-Pipe{
     <#
      .Synopsis
        Allows you to change the value of a PipeBlock. 
       .Description
        The Set-Pipe CMDlet allows change the value of a pre-existing PipeBlock.
       .Example
        Set-Pipe -Name "PipeName" -Value {ScriptBlock}
        Changes the value of the PipeBlock "PipeName".
       .Parameter -Name
        The name for the PipeBlock you wish to modify.
       .Parameter -Value
        The new scriptblock that will replace the pre-existing one in the PipeBlock.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
     Params(
     [parameter(Mandatory=$true)]
        [String]$Name,
     [parameter(Mandatory=$true)]
        [ScriptBlock]$Value
     )
}
function List-Pipes{
    <#
      .Synopsis
        Allows you to list current pipes or PipeBlocks. 
       .Description
        The List-Pipes CMDlet is used to view currently executing or finished pipes.
       .Example
        Split-Pipe -Add {ScriptBlock},"PipeBlock1"
        Splits the current pipe to continue down the pipeline and diverge to the provided ScriptBlocks or PipeBlocks.
       .Parameter -Add
        The ScriptBlocks or PipeBlocks to diverge to.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
     Params(
     [parameter(Mandatory=$false)]
        [String]$Filter,
     [parameter(Mandatory=$false)]
        [String]$Include,
    [parameter(Mandatory=$false)]
        [String]$Exclude
     )
 }
 function Name-Pipe{
    <#
      .Synopsis
        Allows you to rename a PipeBlock.
       .Description
        The Name-Pipe CMDlet is used to set a custom name for a PipeBlock.
       .Example
        Name-Pipe -Old "PipeBlockOld" -New "PipeBlockNew"
        Renames PopeBlockOld to PipeBlockNew.
       .Parameter -Old
        The old PipeBlock name.
       .Parameter -New
        The new PipeBlock name.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
     Params(
     [parameter(Mandatory=$true)]
        [String]$Old,
    [parameter(Mandatory=$true)]
        [String]$New
     )
 }
function Split-Pipe{
    <#
      .Synopsis
        Like a T-Splitter in plumbing. Allows you to split the current pipeline. 
       .Description
        The Split-Pipe CMDlet is used to split a current pipeline into as many threads as you want.
       .Example
        Split-Pipe -Add {ScriptBlock},"PipeBlock1"
        Splits the current pipeline to continue down the pipeline and diverge to a provided ScriptBlocks or PipeBlocks.
       .Parameter -Add
        The ScriptBlocks or PipeBlocks to diverge to.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
     Params(
     [parameter(Mandatory=$true)]
        [Array]$Add
     )
 }
 function Start-Pipe{
     <#
      .Synopsis
        Like a well in plumbing. Allows you to start a multithreaded pipeline. 
       .Description
        The Start-Pipe CMDlet allows you to start with a split pipe.
       .Example
        Start-Pipe -Main {ScriptBlock} -Threads {ScriptBlock},"PipeBlock1"
        Creates a new multithreaded pipeline, the main line to return to(in this case a ScriptBlock) and two threads(one a ScriptBlock, the other a named PipeBlock).
       .Example
        Start-Pipe -Main "PipeBlock1" -Threads {ScriptBlock},"PipeBlock2"
        Creates a new multithreaded pipeline, the main line to return to(in this case a named PipeBlock) and two threads(one a ScriptBlock, the other a named PipeBlock).
       .Parameter -Main
        The main operating ScriptBlock or PipeBlock.
        .Parameter -Threads
        The comma separated alterate pipeline ScriptBlocks or PipeBlocks.
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
     Params(
     [parameter(Mandatory=$true)]
        [ScriptBlock]$Main,
     [parameter(Mandatory=$true)]
        [Array]$Threads
     )
}
function Merge-Pipe{
     <#
      .Synopsis
        Like a Y-Splitter in plumbing. Allows you to merge a multithreaded pipeline. 
       .Description
        The Merge-Pipe CMDlet allows you to converge all pipes of your choice into a single pipe.
       .Example
        Merge-Pipe -Pipes "PipeBlock1","PipeBlock2","PipeBlock3"
        Merges the three pipes.
       .Parameter -Pipes
        A comma separated list of PipeBlocks to merge.
       .Outputs
        A pipeline variable "$_" with dot sourceable tables for each merged PipeBlock(ex. "$_.PipeBlock1").
       .Notes
        NAME:  PowerSplitter
        AUTHOR: Chad Baxter
        LASTEDIT: 10/5/2015
        KEYWORDS:
       .Link
        Http://www.github.com/LogoiLab/PowerSplitter
     #Requires -Version 2.0
     #>
     Params(
     [parameter(Mandatory=$true)]
        [Array]$Pipes
     )
}