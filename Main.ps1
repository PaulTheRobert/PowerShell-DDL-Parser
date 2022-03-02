# This is a test SQL file for now
# Set the file path
$InputSqlFile = 'C:\Users\paul.davis\source\repos\DDL Parser\Simple SQL.sql'

# Get the content from the file
$Content = Get-Content -Path $InputSqlFile
$Lines = @()
Foreach($Line in $Content){
    
    # split each line out by words - split on newline - and assign the results to an array
      $Lines += $Line.Split([Environment]::NewLine)
}
$AllWordsAndSpaces = @()
#Split each line into words
Foreach($Line in $Lines){    
    # split each line out by words - split on newline - and assign the results to an array
    $AllWordsAndSpaces += $Line.Split(" ")
}
$Words = @()
Foreach($Word in $AllWordsAndSpaces){    
    # split each line out by words - split on newline - and assign the results to an array
    #if($Word.length -gt 2){
    #    $Words += $Line.Split(" ")
    #}
    if($Word.Length -gt 1){
        #Write-Output $Word $Word.Length 
        $Words += $Word
    }

}

#initialize empty arrays for code, comments, and key words
$Code = @()
$Comment = @()
$KeyWord = @()

# loop through all the words 
Foreach($Word in $Words){
    # keep the words that contain a "." character as code
    If($Word.Contains(".")){
        $Code += $Word
    }
    # keep the words that contain a "/" character as comments
    elseif($Word.Contains("/")){
        $Comment += $Word
    # keep the words that do not contain a {"/", "."} characters as key words
    }else{
        $KeyWord += $Word
    }
}



