(* ::Package:: *)

(* ::Input:: *)
(*ClearAll["Global`*"]*)
(**)
(*(* string containing what you want gif to say *)*)
(*phraseToEnter="             HAY!!!\nLOOK WHAT I MADE!!";*)
(**)
(*(* file name for input gif *)*)
(*fileName="yell.gif";*)
(**)
(*(* Colors for the blinking text *)*)
(*color1=Magenta;*)
(*color2=Cyan;*)
(**)
(*(* Rescale the output image *)*)
(*imageSize=700;*)
(*(* The fontsize *)*)
(*fsize=40;*)
(*(* Number of frames to wait before entering text *)*)
(*startFrame = 17;*)
(**)
(*(* creates a pathname based on name of gif *)*)
(*pathToOriginalGif1=NotebookDirectory[]<>ToString[fileName];*)
(*(* checks if .gif is included in given pathname*)
(*if not it is added *)*)
(*pathToOriginalGif2=If[*)
(*	StringSplit[StringSplit[fileName,"."][[-1]],*)
(*		x:NumberString:>ToExpression@x][[1]]=="gif",*)
(*	pathToOriginalGif1,*)
(*	pathToOriginalGif1<>".gif"];*)
(*(* create a new gif named the same thing as input gif, but*)
(*with the word NEW at the end *)*)
(*pathToNewGif=StringSplit[pathToOriginalGif2,"."][[1]]<>"New.gif";*)
(*impFile=Import[pathToOriginalGif2];*)
(*(* The frames with no text added *)*)
(*none=Table[*)
(*ImageResize[impFile[[i]],imageSize],*)
(*{i,1,startFrame}];*)
(*(* Add text buble to remaining odd frames *)*)
(*half=Table[*)
(*Legended[*)
(*ImageResize[impFile[[i]],imageSize],*)
(*Placed[*)
(*Framed[*)
(*Style[phraseToEnter,*)
(*color1,*)
(*fsize,*)
(*FontFamily->"Latex"],*)
(*FrameStyle->Black,*)
(*RoundingRadius->10,*)
(*FrameMargins->2,*)
(*Background->Directive[Opacity[.8],color2]],*)
(*{.5,.05}]],*)
(*{i,startFrame,Length[impFile],2}];*)
(**)
(*(* Add text of alternating even frames to give*)
(*the effect of blinking *)*)
(*second=Table[*)
(*Legended[*)
(*ImageResize[impFile[[i]],imageSize],*)
(*Placed[*)
(*Framed[*)
(*Style[phraseToEnter,*)
(*color2,*)
(*fsize,*)
(*FontFamily->"Latex"],*)
(*FrameStyle->Black,*)
(*RoundingRadius->10,*)
(*FrameMargins->2,*)
(*Background->Directive[Opacity[.8],color1]],*)
(*{.5,.05}]],*)
(*{i,startFrame+1,Length[impFile],2}];*)
(**)
(*(* Export new gif to directory in which script is located *)*)
(*Export[*)
(*pathToNewGif,*)
(*Flatten[{none,Table[{half[[i]],second[[i]]},{i,Length[second]}]}],*)
(*"AnimationRepetitions"->\[Infinity]];*)
