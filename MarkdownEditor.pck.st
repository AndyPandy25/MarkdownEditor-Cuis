'From Cuis7.9 [latest update: #8139] on 11 October 2026 at 12:00:00 pm'!
'Markdown support for the Cuis text editor: syntax highlighting as you type, a live rendered preview, keyboard shortcuts and links. Open it from World menu > Open > Markdown Editor, or open a .md file from the File List.'!
!provides: 'MarkdownEditor' 1 1!
!requires: 'Graphics-Files-Additional' 1 nil nil!
SystemOrganization addCategory: #'MarkdownEditor-Parsing'!
SystemOrganization addCategory: #'MarkdownEditor-Styling'!
SystemOrganization addCategory: #'MarkdownEditor-UI'!
SystemOrganization addCategory: #'MarkdownEditor-Export'!
SystemOrganization addCategory: #'MarkdownEditor-Tests'!


!classDefinition: #MarkdownRange category: #'MarkdownEditor-Parsing'!
Object subclass: #MarkdownRange
	instanceVariableNames: 'type start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Parsing'!
!classDefinition: 'MarkdownRange class' category: #'MarkdownEditor-Parsing'!
MarkdownRange class
	instanceVariableNames: ''!

!classDefinition: #MarkdownParser category: #'MarkdownEditor-Parsing'!
Object subclass: #MarkdownParser
	instanceVariableNames: 'source ranges isInsideCodeBlock isInsideMathBlock isInsideHtmlComment previousLineKind previousLineStart previousLineEnd previousLineFirstRangeIndex previousQuoteDepth paragraphLines linkDefinitions codeLanguage codeStart codeEnd'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Parsing'!
!classDefinition: 'MarkdownParser class' category: #'MarkdownEditor-Parsing'!
MarkdownParser class
	instanceVariableNames: ''!

!classDefinition: #MarkdownCodeHighlighter category: #'MarkdownEditor-Parsing'!
Object subclass: #MarkdownCodeHighlighter
	instanceVariableNames: 'source start end language ranges'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Parsing'!
!classDefinition: 'MarkdownCodeHighlighter class' category: #'MarkdownEditor-Parsing'!
MarkdownCodeHighlighter class
	instanceVariableNames: ''!

!classDefinition: #MarkdownMath category: #'MarkdownEditor-Styling'!
Object subclass: #MarkdownMath
	instanceVariableNames: 'source index pieces'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Styling'!
!classDefinition: 'MarkdownMath class' category: #'MarkdownEditor-Styling'!
MarkdownMath class
	instanceVariableNames: ''!

!classDefinition: #MarkdownTextStyler category: #'MarkdownEditor-Styling'!
SHTextStyler subclass: #MarkdownTextStyler
	instanceVariableNames: 'ranges'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Styling'!
!classDefinition: 'MarkdownTextStyler class' category: #'MarkdownEditor-Styling'!
MarkdownTextStyler class
	instanceVariableNames: 'styleTable'!

!classDefinition: #MarkdownFontSize category: #'MarkdownEditor-Styling'!
TextFontSize subclass: #MarkdownFontSize
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Styling'!
!classDefinition: 'MarkdownFontSize class' category: #'MarkdownEditor-Styling'!
MarkdownFontSize class
	instanceVariableNames: ''!

!classDefinition: #MarkdownFontFamily category: #'MarkdownEditor-Styling'!
TextFontFamily subclass: #MarkdownFontFamily
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Styling'!
!classDefinition: 'MarkdownFontFamily class' category: #'MarkdownEditor-Styling'!
MarkdownFontFamily class
	instanceVariableNames: ''!

!classDefinition: #MarkdownRenderer category: #'MarkdownEditor-Styling'!
Object subclass: #MarkdownRenderer
	instanceVariableNames: 'parser ranges tables text source baseDirectory footnoteNumbers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Styling'!
!classDefinition: 'MarkdownRenderer class' category: #'MarkdownEditor-Styling'!
MarkdownRenderer class
	instanceVariableNames: 'imageCache'!

!classDefinition: #MarkdownTable category: #'MarkdownEditor-Styling'!
Object subclass: #MarkdownTable
	instanceVariableNames: 'source rows alignments columnWidths cellWidths'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Styling'!
!classDefinition: 'MarkdownTable class' category: #'MarkdownEditor-Styling'!
MarkdownTable class
	instanceVariableNames: ''!

!classDefinition: #MarkdownTableRow category: #'MarkdownEditor-Styling'!
Object subclass: #MarkdownTableRow
	instanceVariableNames: 'start end cells'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Styling'!
!classDefinition: 'MarkdownTableRow class' category: #'MarkdownEditor-Styling'!
MarkdownTableRow class
	instanceVariableNames: ''!

!classDefinition: #MarkdownLinkAction category: #'MarkdownEditor-UI'!
TextAction subclass: #MarkdownLinkAction
	instanceVariableNames: 'url baseDirectory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-UI'!
!classDefinition: 'MarkdownLinkAction class' category: #'MarkdownEditor-UI'!
MarkdownLinkAction class
	instanceVariableNames: ''!

!classDefinition: #MarkdownTextModel category: #'MarkdownEditor-UI'!
TextModel subclass: #MarkdownTextModel
	instanceVariableNames: 'fileEntry previewModel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-UI'!
!classDefinition: 'MarkdownTextModel class' category: #'MarkdownEditor-UI'!
MarkdownTextModel class
	instanceVariableNames: 'hasShownTutorial'!

!classDefinition: #MarkdownTextEditor category: #'MarkdownEditor-UI'!
TextEditor subclass: #MarkdownTextEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-UI'!
!classDefinition: 'MarkdownTextEditor class' category: #'MarkdownEditor-UI'!
MarkdownTextEditor class
	instanceVariableNames: ''!

!classDefinition: #MarkdownHtmlExporter category: #'MarkdownEditor-Export'!
Object subclass: #MarkdownHtmlExporter
	instanceVariableNames: 'source baseDirectory parser ranges lines rangesByLine lineIndex html footnotes footnoteNumbers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Export'!
!classDefinition: 'MarkdownHtmlExporter class' category: #'MarkdownEditor-Export'!
MarkdownHtmlExporter class
	instanceVariableNames: ''!

!classDefinition: #MarkdownParserTest category: #'MarkdownEditor-Tests'!
TestCase subclass: #MarkdownParserTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Tests'!
!classDefinition: 'MarkdownParserTest class' category: #'MarkdownEditor-Tests'!
MarkdownParserTest class
	instanceVariableNames: ''!

!classDefinition: #MarkdownTextStylerTest category: #'MarkdownEditor-Tests'!
TestCase subclass: #MarkdownTextStylerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Tests'!
!classDefinition: 'MarkdownTextStylerTest class' category: #'MarkdownEditor-Tests'!
MarkdownTextStylerTest class
	instanceVariableNames: ''!

!classDefinition: #MarkdownRendererTest category: #'MarkdownEditor-Tests'!
TestCase subclass: #MarkdownRendererTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Tests'!
!classDefinition: 'MarkdownRendererTest class' category: #'MarkdownEditor-Tests'!
MarkdownRendererTest class
	instanceVariableNames: ''!

!classDefinition: #MarkdownLinkActionTest category: #'MarkdownEditor-Tests'!
TestCase subclass: #MarkdownLinkActionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Tests'!
!classDefinition: 'MarkdownLinkActionTest class' category: #'MarkdownEditor-Tests'!
MarkdownLinkActionTest class
	instanceVariableNames: ''!

!classDefinition: #MarkdownTextEditorTest category: #'MarkdownEditor-Tests'!
TestCase subclass: #MarkdownTextEditorTest
	instanceVariableNames: 'model window textMorph editor previewWindow'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Tests'!
!classDefinition: 'MarkdownTextEditorTest class' category: #'MarkdownEditor-Tests'!
MarkdownTextEditorTest class
	instanceVariableNames: ''!

!classDefinition: #MarkdownHtmlExporterTest category: #'MarkdownEditor-Tests'!
TestCase subclass: #MarkdownHtmlExporterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Tests'!
!classDefinition: 'MarkdownHtmlExporterTest class' category: #'MarkdownEditor-Tests'!
MarkdownHtmlExporterTest class
	instanceVariableNames: ''!

!classDefinition: #MarkdownMathTest category: #'MarkdownEditor-Tests'!
TestCase subclass: #MarkdownMathTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Tests'!
!classDefinition: 'MarkdownMathTest class' category: #'MarkdownEditor-Tests'!
MarkdownMathTest class
	instanceVariableNames: ''!

!classDefinition: #MarkdownCodeHighlighterTest category: #'MarkdownEditor-Tests'!
TestCase subclass: #MarkdownCodeHighlighterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Tests'!
!classDefinition: 'MarkdownCodeHighlighterTest class' category: #'MarkdownEditor-Tests'!
MarkdownCodeHighlighterTest class
	instanceVariableNames: ''!

!classDefinition: #MarkdownTutorialTest category: #'MarkdownEditor-Tests'!
TestCase subclass: #MarkdownTutorialTest
	instanceVariableNames: 'windows previousHasShownTutorial'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarkdownEditor-Tests'!
!classDefinition: 'MarkdownTutorialTest class' category: #'MarkdownEditor-Tests'!
MarkdownTutorialTest class
	instanceVariableNames: ''!


!MarkdownRange commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
I am a fragment of a Markdown text, from start to end (both inclusive), that must be styled according to my type.
Types are symbols like #bold, #italic, #heading1, #markup (the delimiters themselves, like ** or #), etc.
See MarkdownTextStyler class >> #defaultStyleTable for the complete list.!

!MarkdownParser commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
I parse Markdown text and answer a collection of MarkdownRanges describing how each part of it should be styled.
I do not build a document tree: I only need to know where each element starts and ends, so the editor can highlight it while the user types.

Supported syntax:
	Block elements (one per line): headings (# to ###### or underlined with === and ---), blockquotes (>), list items (-, *, + and 1.), task list items (- [ ] and - [x]), tables (| a | b |), horizontal rules (---) and fenced code blocks (```).
	Inline elements: *italic*, _italic_, **bold**, __bold__, ***bold italic***, ~~strikethrough~~, `code`, [links](url), !![images](url) and \escaped characters.

Some lines change the meaning of the previous one (=== makes it a heading, |---| makes it a table header). That is why I remember the previous line, and insert ranges for it when needed.

Example:
	MarkdownParser rangesIn: '# Hello **world**'!

!MarkdownCodeHighlighter commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
I highlight the code of fenced code blocks according to their language, as in ```smalltalk.
Smalltalk code is highlighted by Shout, the same way as in a Workspace. Code in other languages is highlighted line by line: comments, strings, numbers and the keywords of the most common languages.

	MarkdownCodeHighlighter rangesIn: 'x := 3 + 4' from: 1 to: 10 language: 'smalltalk'!

!MarkdownMath commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
I show math written in the notation of LaTeX, as in $x^2 + \alpha$, with symbols, superscripts and subscripts.
I am not LaTeX: \frac{a}{b} is shown as a/b, \sqrt{x} as √x, and commands I do not know by their name (\sin as sin).

	(MarkdownMath textFor: 'e^{i\pi} + 1 = 0') edit!

!MarkdownTextStyler commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
I style Markdown text: I use a MarkdownParser to find its elements and add the TextAttributes defined in my style table to each of them.
All attributes I add answer true to #isForShout, so they are removed and recomputed each time the text changes, without affecting the text the user typed.!

!MarkdownFontSize commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
A font size used by the Markdown styler (for example, for headings). Being #isForShout, it is removed each time the text is re-styled.!

!MarkdownFontFamily commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
A font family used by the Markdown styler (for example, a monospaced font for code). Being #isForShout, it is removed each time the text is re-styled.!

!MarkdownRenderer commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
I render Markdown text as a Text without markup: delimiters are hidden, list markers become bullets, task boxes become check boxes, etc.
The result keeps the same styles used by the editor, and links can be clicked.

	(MarkdownRenderer render: '# Hello **world**') edit!

!MarkdownTable commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
I am a table of a Markdown text: consecutive lines that are table rows (| a | b |) or separators (|---|:---:|).
I know how to draw it in the preview: with borders, and with its columns aligned (to the left, center or right, as the separator says). For the columns to be aligned, the table is shown with a monospaced font.

	MarkdownTable tablesIn: aString ranges: (MarkdownParser rangesIn: aString)!

!MarkdownTableRow commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
A line of a MarkdownTable, from start to end. Its cells are the intervals of their text, without the blanks around it. Separator lines have no cells.!

!MarkdownLinkAction commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
I am the action of a Markdown link. Links to Markdown files (relative to the directory of the edited file, or absolute) are opened in a Markdown Editor.
Cuis can not open a web browser, so other links are copied to the clipboard.!

!MarkdownTextModel commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
I am the model of a text editor that highlights Markdown syntax as the user types.
I can open a preview of my contents, that is updated as they change.

	MarkdownTextModel open.
	MarkdownTextModel openOn: 'README.md' asFileEntry.!

!MarkdownTextEditor commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
A TextEditor with Markdown commands and keyboard shortcuts: bold, italic, strikethrough, links, headings, tasks, opening links, preview, and saving as a .md file or an HTML page. See #markdownMenuSpec.!

!MarkdownHtmlExporter commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
I export Markdown text as an HTML page, that can be opened in any web browser. Headings have ids, so links to headings work, and footnotes are at the end of the page.
Relative paths of images are made absolute, as the page may be saved in another directory.

	(MarkdownHtmlExporter documentFor: '# Hola **mundo**' relativeTo: nil) edit!

!MarkdownParserTest commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
Tests for MarkdownParser. Expected ranges are written as #(type start end).!

!MarkdownTextStylerTest commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
Tests for MarkdownTextStyler and MarkdownTextModel.!

!MarkdownRendererTest commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
Tests for MarkdownRenderer.!

!MarkdownLinkActionTest commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
Tests for MarkdownLinkAction.!

!MarkdownHtmlExporterTest commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
Tests for MarkdownHtmlExporter. Expected HTML is written as an Array of lines.!

!MarkdownMathTest commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
Tests for MarkdownMath.!

!MarkdownCodeHighlighterTest commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
Tests for MarkdownCodeHighlighter. Expected ranges are written as #(type start end).!

!MarkdownTextEditorTest commentStamp: 'AP 11/Oct/2026 12:00:00' prior: 0!
Tests for MarkdownTextEditor commands and the preview. They open a real editor window, that is closed in #tearDown.!


!MarkdownRange methodsFor: 'initialization' stamp: 'AP 11/Oct/2026 12:00:00'!
initializeType: aType from: aStartIndex to: anEndIndex

	type := aType.
	start := aStartIndex.
	end := anEndIndex! !

!MarkdownRange methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
type

	^type! !

!MarkdownRange methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
start

	^start! !

!MarkdownRange methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
end

	^end! !

!MarkdownRange methodsFor: 'testing' stamp: 'AP 11/Oct/2026 12:00:00'!
contains: aMarkdownRange

	^start <= aMarkdownRange start and: [ aMarkdownRange end <= end ]! !

!MarkdownRange methodsFor: 'converting' stamp: 'AP 11/Oct/2026 12:00:00'!
asArray

	^{ type. start. end }! !

!MarkdownRange methodsFor: 'comparing' stamp: 'AP 11/Oct/2026 12:00:00'!
= anObject

	self == anObject ifTrue: [ ^true ].
	^self class = anObject class and: [ self asArray = anObject asArray ]! !

!MarkdownRange methodsFor: 'comparing' stamp: 'AP 11/Oct/2026 12:00:00'!
hash

	^self asArray hash! !

!MarkdownRange methodsFor: 'printing' stamp: 'AP 11/Oct/2026 12:00:00'!
printOn: aStream

	aStream
		nextPutAll: type;
		space;
		print: start;
		nextPut: $-;
		print: end! !

!MarkdownRange class methodsFor: 'instance creation' stamp: 'AP 11/Oct/2026 12:00:00'!
type: aType from: aStartIndex to: anEndIndex

	^self new initializeType: aType from: aStartIndex to: anEndIndex! !


!MarkdownParser methodsFor: 'parsing' stamp: 'AP 11/Oct/2026 12:00:00'!
parse: aString
	"Answer the MarkdownRanges of aString"

	source := aString.
	ranges := OrderedCollection new.
	isInsideCodeBlock := false.
	isInsideMathBlock := false.
	isInsideHtmlComment := false.
	previousLineKind := #blank.
	previousQuoteDepth := 0.
	paragraphLines := OrderedCollection new.
	linkDefinitions := self findLinkDefinitions.
	source lineIndicesDo: [ :lineStart :lineEnd :lineEndIncludingNewLine |
		self parseLineFrom: lineStart to: lineEnd ].
	self
		endParagraph;
		endCodeBlock.
	^ranges! !

!MarkdownParser methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
ranges

	^ranges! !

!MarkdownParser methodsFor: 'links' stamp: 'AP 11/Oct/2026 12:00:00'!
linkAt: anIndex
	"Answer the #link or #autolink range at anIndex (or just after it, where the cursor is after typing it), or nil if there is none"

	^ranges
		detect: [ :each | (#(#link #autolink) includes: each type) and: [ anIndex between: each start and: each end + 1 ]]
		ifNone: [ nil ]! !

!MarkdownParser methodsFor: 'links' stamp: 'AP 11/Oct/2026 12:00:00'!
urlOfLink: aLinkRange
	"Answer the url of a #link or #autolink range, or nil if it has none.
	It is written in the link, as in [text](url 'title'), or in the definition of its label, as in [text][label] and [label]: url"

	| urlRange |
	aLinkRange type = #autolink ifTrue: [ ^self autolinkUrlFrom: aLinkRange start to: aLinkRange end ].
	urlRange := self rangeOfType: #linkUrl in: aLinkRange.
	urlRange ifNotNil: [
		^(source copyFrom: urlRange start + 1 to: urlRange end - 1) withBlanksTrimmed copyUpTo: Character space ].
	^linkDefinitions at: (self class normalizedLabel: (self labelOfLink: aLinkRange)) ifAbsent: [ nil ]! !

!MarkdownParser methodsFor: 'links' stamp: 'AP 11/Oct/2026 12:00:00'!
labelOfLink: aLinkRange
	"The label of a reference link: [text][label], or the text in [label][] and [label]"

	| referenceRange textRange |
	referenceRange := self rangeOfType: #linkReference in: aLinkRange.
	(referenceRange notNil and: [ referenceRange end - referenceRange start >= 2 ])
		ifTrue: [ ^source copyFrom: referenceRange start + 1 to: referenceRange end - 1 ].
	textRange := self rangeOfType: #linkText in: aLinkRange.
	^textRange
		ifNil: [ '' ]
		ifNotNil: [ source copyFrom: textRange start to: textRange end ]! !

!MarkdownParser methodsFor: 'links' stamp: 'AP 11/Oct/2026 12:00:00'!
autolinkUrlFrom: start to: end
	"E-mail addresses are linked with mailto:"

	| url |
	url := source copyFrom: start to: end.
	^((url includes: $@) and: [ (url includesSubString: ':') not ])
		ifTrue: [ 'mailto:', url ]
		ifFalse: [ url ]! !

!MarkdownParser methodsFor: 'links' stamp: 'AP 11/Oct/2026 12:00:00'!
findLinkDefinitions
	"Reference links can be defined after they are used, as in [text][label] ... [label]: url. So definitions are found before parsing.
	Answer a Dictionary from normalized labels to urls"

	| definitions isInsideFence |
	definitions := Dictionary new.
	isInsideFence := false.
	source lineIndicesDo: [ :start :end :endIncludingNewLine |
		(self isCodeFenceFrom: start to: end) ifTrue: [ isInsideFence := isInsideFence not ].
		isInsideFence ifFalse: [
			(self linkDefinitionFrom: start to: end) ifNotNil: [ :definition |
				(definitions includesKey: definition key) ifFalse: [ definitions add: definition ]]]].
	^definitions! !

!MarkdownParser methodsFor: 'links' stamp: 'AP 11/Oct/2026 12:00:00'!
linkDefinitionFrom: start to: end
	"Answer label -> url if the line defines a reference link, as in [label]: url 'title'. Answer nil if it does not"

	| line closingIndex url |
	line := (self lineFrom: start to: end) withBlanksTrimmed.
	((line beginsWith: '[') and: [ (line beginsWith: '[^') not ]) ifFalse: [ ^nil ].
	closingIndex := line indexOf: $].
	(closingIndex > 2 and: [ closingIndex < line size and: [ (line at: closingIndex + 1) = $: ]]) ifFalse: [ ^nil ].
	url := (line copyFrom: closingIndex + 2 to: line size) withBlanksTrimmed copyUpTo: Character space.
	url isEmpty ifTrue: [ ^nil ].
	((url beginsWith: '<') and: [ url endsWith: '>' ]) ifTrue: [ url := url copyFrom: 2 to: url size - 1 ].
	^(self class normalizedLabel: (line copyFrom: 2 to: closingIndex - 1)) -> url! !

!MarkdownParser methodsFor: 'links' stamp: 'AP 11/Oct/2026 12:00:00'!
isDefinedLabel: aString

	^linkDefinitions includesKey: (self class normalizedLabel: aString)! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseLineFrom: start to: end

	| firstRangeIndex |
	firstRangeIndex := ranges size + 1.
	previousLineKind := self parseBlockFrom: start to: end.
	previousLineStart := start.
	previousLineEnd := end.
	previousLineFirstRangeIndex := firstRangeIndex! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseBlockFrom: start to: end
	"Parse the line as the block element it is.
	Answer the kind of line (#paragraph, #quoteParagraph, #tableRow, #indentedCode, #blank or #other), as the next line may change its meaning or continue it.
	Paragraph lines are parsed when the paragraph ends, as their inline elements may span many lines"

	(isInsideCodeBlock or: [ self isCodeFenceFrom: start to: end ])
		ifTrue: [ ^self endParagraphAndDo: [ self parseCodeBlockLineFrom: start to: end. #other ]].
	(isInsideMathBlock or: [ self isMathFenceFrom: start to: end ])
		ifTrue: [ ^self endParagraphAndDo: [ self parseMathBlockLineFrom: start to: end. #other ]].
	(isInsideHtmlComment or: [ self isHtmlCommentStartFrom: start to: end ])
		ifTrue: [ ^self endParagraphAndDo: [ self parseHtmlCommentLineFrom: start to: end. #other ]].
	(previousLineKind = #paragraph and: [ (self setextLevelFrom: start to: end) > 0 ])
		ifTrue: [ self parseSetextUnderlineFrom: start to: end. ^#other ].
	((#(#blank #indentedCode) includes: previousLineKind) and: [ self isIndentedCodeFrom: start to: end ])
		ifTrue: [ self parseIndentedCodeFrom: start to: end. ^#indentedCode ].
	(self firstNonBlankFrom: start to: end) > end
		ifTrue: [ ^self endParagraphAndDo: [ #blank ]].
	(self isHorizontalRuleFrom: start to: end)
		ifTrue: [ ^self endParagraphAndDo: [ self add: #horizontalRule from: start to: end. #other ]].
	(self headingLevelFrom: start to: end) > 0
		ifTrue: [ ^self endParagraphAndDo: [ self parseHeadingFrom: start to: end. #other ]].
	(self footnoteMarkerEndFrom: start to: end) > 0
		ifTrue: [ ^self endParagraphAndDo: [ self parseFootnoteDefinitionFrom: start to: end. #other ]].
	(self linkDefinitionFrom: start to: end) notNil
		ifTrue: [ ^self endParagraphAndDo: [ self add: #linkDefinition from: start to: end. #other ]].
	(self isBlockquoteFrom: start to: end)
		ifTrue: [ ^self endParagraphAndDo: [ self parseBlockquoteFrom: start to: end ]].
	(self listMarkerEndFrom: start to: end) > 0
		ifTrue: [ ^self endParagraphAndDo: [ self parseListItemFrom: start to: end. #other ]].
	(self isTableSeparatorFrom: start to: end)
		ifTrue: [ ^self endParagraphAndDo: [ self parseTableSeparatorFrom: start to: end. #other ]].
	(self isTableRowFrom: start to: end)
		ifTrue: [ ^self endParagraphAndDo: [ self parseTableRowFrom: start to: end. #tableRow ]].
	paragraphLines add: start -> end.
	^#paragraph! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
endParagraphAndDo: aBlock
	"A block element ends the paragraph before it. Answer the value of aBlock"

	self endParagraph.
	^aBlock value! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
endParagraph
	"Parse the paragraph that just ended. Its inline elements may span many lines, as in **bold
	text**. Its lines are joined by a space, unless the line ends with two spaces or a \ (a hard line break)"

	paragraphLines isEmpty ifTrue: [ ^self ].
	self parseInlineFrom: paragraphLines first key to: paragraphLines last value.
	1 to: paragraphLines size - 1 do: [ :index |
		self addLineBreakAfterLineFrom: (paragraphLines at: index) key to: (paragraphLines at: index) value ].
	paragraphLines := OrderedCollection new! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
addLineBreakAfterLineFrom: start to: end
	"The new line after a line of a paragraph is a #softBreak (shown as a space), or a #hardBreak if the line ends with a \ or two or more spaces"

	| spaces |
	(end >= start and: [ (source at: end) = $\ ]) ifTrue: [ ^self add: #hardBreak from: end to: end ].
	spaces := 0.
	[ end - spaces >= start and: [ (source at: end - spaces) = Character space ]] whileTrue: [ spaces := spaces + 1 ].
	spaces >= 2
		ifTrue: [ self add: #hardBreak from: end - spaces + 1 to: end ]
		ifFalse: [ self add: #softBreak from: end + 1 to: end + 1 ]! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseCodeBlockLineFrom: start to: end
	"Lines inside a fenced code block are not parsed as Markdown, but highlighted according to the language of the block, as in ```smalltalk.
	A fence line opens or closes the block"

	(self isCodeFenceFrom: start to: end) ifFalse: [
		codeStart ifNil: [ codeStart := start ].
		codeEnd := end.
		^self add: #codeBlock from: start to: end ].
	isInsideCodeBlock
		ifTrue: [ self endCodeBlock ]
		ifFalse: [ codeLanguage := ((self lineFrom: start to: end) withBlanksTrimmed allButFirst: 3) withBlanksTrimmed asLowercase ].
	isInsideCodeBlock := isInsideCodeBlock not.
	self add: #codeFence from: start to: end! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
endCodeBlock

	codeStart ifNotNil: [
		ranges addAll: (MarkdownCodeHighlighter rangesIn: source from: codeStart to: codeEnd language: codeLanguage) ].
	codeStart := nil! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseIndentedCodeFrom: start to: end
	"A line indented with four spaces (or a tab) after a blank line is code. The indentation is not part of the code"

	| indentEnd width |
	indentEnd := start - 1.
	width := 0.
	[ width < 4 ] whileTrue: [
		indentEnd := indentEnd + 1.
		width := width + ((source at: indentEnd) = Character tab ifTrue: [ 4 ] ifFalse: [ 1 ]) ].
	self
		add: #codeBlock from: start to: end;
		add: #codeIndent from: start to: indentEnd! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseMathBlockLineFrom: start to: end
	"Lines between $$ fences are math. A line like $$x^2$$ is a math block too"

	| line first last |
	(self isMathFenceFrom: start to: end) ifFalse: [ ^self add: #mathBlock from: start to: end ].
	line := (self lineFrom: start to: end) withBlanksTrimmed.
	(isInsideMathBlock not and: [ line size > 4 and: [ line endsWith: '$$' ]]) ifTrue: [
		first := self firstNonBlankFrom: start to: end.
		last := first + line size - 1.
		^self
			add: #mathMarkup from: first to: first + 1;
			add: #mathBlock from: first + 2 to: last - 2;
			add: #mathMarkup from: last - 1 to: last ].
	isInsideMathBlock := isInsideMathBlock not.
	self add: #mathFence from: start to: end! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseHtmlCommentLineFrom: start to: end
	"An HTML comment that does not end in the line where it starts continues until a line with -->"

	isInsideHtmlComment := ((self lineFrom: start to: end) includesSubString: '-->') not.
	self add: #htmlCommentBlock from: start to: end! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseSetextUnderlineFrom: start to: end
	"A line of = or - under a paragraph makes it a heading.
	Its range goes before the ranges of its inline elements, so their styles are not overriden by the heading style"

	self
		add: (self class headingTypes at: (self setextLevelFrom: start to: end))
		from: paragraphLines first key
		to: paragraphLines last value.
	self endParagraph.
	self add: #setextUnderline from: start to: end! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseHeadingFrom: start to: end
	"The markup includes the space after the #s"

	| level |
	level := self headingLevelFrom: start to: end.
	self
		add: (self class headingTypes at: level) from: start to: end;
		add: #markup from: start to: (start + level min: end).
	self parseInlineFrom: start + level + 1 to: end! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseFootnoteDefinitionFrom: start to: end
	"As in [^1]: the text of the note"

	| markerEnd |
	markerEnd := self footnoteMarkerEndFrom: start to: end.
	self add: #footnoteMarker from: (self firstNonBlankFrom: start to: end) to: markerEnd.
	self parseInlineFrom: markerEnd + 1 to: end! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseBlockquoteFrom: start to: end
	"Quotes can be nested (> > text), and can have block elements like lists or headings.
	Consecutive quoted paragraph lines are a single paragraph: the > of the following lines are just #quoteContinuation markup.
	Answer the kind of line"

	| contentStart depth isContinuation markerStart |
	contentStart := start.
	depth := 0.
	[ self isBlockquoteFrom: contentStart to: end ] whileTrue: [
		depth := depth + 1.
		contentStart := (self quoteMarkerEndFrom: contentStart to: end) + 1 ].
	isContinuation := previousLineKind = #quoteParagraph and: [
		depth = previousQuoteDepth and: [
			(self quotedBlockKindFrom: contentStart to: end) = #paragraph ]].
	isContinuation ifTrue: [ self addLineBreakAfterLineFrom: previousLineStart to: previousLineEnd ].
	self add: #blockquote from: start to: end.
	markerStart := start.
	depth timesRepeat: [ | markerEnd |
		markerEnd := self quoteMarkerEndFrom: markerStart to: end.
		self
			add: (isContinuation ifTrue: [ #quoteContinuation ] ifFalse: [ #quoteMarker ])
			from: (self firstNonBlankFrom: markerStart to: end)
			to: markerEnd.
		markerStart := markerEnd + 1 ].
	previousQuoteDepth := depth.
	^self parseQuotedBlockFrom: contentStart to: end! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseQuotedBlockFrom: start to: end
	"Parse the contents of a quoted line. Answer the kind of line"

	| kind |
	kind := self quotedBlockKindFrom: start to: end.
	kind = #heading ifTrue: [ self parseHeadingFrom: start to: end ].
	kind = #horizontalRule ifTrue: [ self add: #horizontalRule from: start to: end ].
	kind = #listItem ifTrue: [ self parseListItemFrom: start to: end ].
	kind = #paragraph ifTrue: [
		self parseInlineFrom: start to: end.
		^#quoteParagraph ].
	^#other! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseListItemFrom: start to: end

	| markerEnd boxStart |
	markerEnd := self listMarkerEndFrom: start to: end.
	self add: #listMarker from: (self firstNonBlankFrom: start to: end) to: markerEnd.
	boxStart := markerEnd + 2.
	(self isTaskBoxAt: boxStart upTo: end) ifFalse: [ ^self parseInlineFrom: markerEnd + 1 to: end ].
	(source at: boxStart + 1) isSeparator
		ifTrue: [ self add: #uncheckedTask from: boxStart to: boxStart + 2 ]
		ifFalse: [
			self
				add: #checkedTask from: boxStart to: boxStart + 2;
				add: #completedTaskText from: boxStart + 4 to: end ].
	self parseInlineFrom: boxStart + 3 to: end! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseTableSeparatorFrom: start to: end
	"A separator line under a table row makes it the table header"

	previousLineKind = #tableRow ifTrue: [
		self insert: #tableHeader from: previousLineStart to: previousLineEnd at: previousLineFirstRangeIndex ].
	self add: #tableSeparator from: start to: end! !

!MarkdownParser methodsFor: 'parsing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
parseTableRowFrom: start to: end
	"Cells are separated by | characters. Escaped \| are part of the cell"

	| index cellStart |
	index := start.
	cellStart := start.
	[ index <= end ] whileTrue: [
		(source at: index) = $| ifTrue: [
			self parseInlineFrom: cellStart to: index - 1.
			self add: #tableDelimiter from: index to: index.
			cellStart := index + 1 ].
		index := index + ((source at: index) = $\ ifTrue: [ 2 ] ifFalse: [ 1 ]) ].
	self parseInlineFrom: cellStart to: end! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
isCodeFenceFrom: start to: end

	^(self lineFrom: start to: end) withBlanksTrimmed beginsWith: '```'! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
isMathFenceFrom: start to: end

	^(self lineFrom: start to: end) withBlanksTrimmed beginsWith: '$$'! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
isHtmlCommentStartFrom: start to: end
	"An HTML comment that does not end in the same line"

	| line |
	line := (self lineFrom: start to: end) withBlanksTrimmed.
	^(line beginsWith: '<!!--') and: [ (line includesSubString: '-->') not ]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
isIndentedCodeFrom: start to: end

	| width index |
	width := 0.
	index := start.
	[ index <= end and: [ (source at: index) = Character space or: [ (source at: index) = Character tab ]]] whileTrue: [
		width := width + ((source at: index) = Character tab ifTrue: [ 4 ] ifFalse: [ 1 ]).
		index := index + 1 ].
	^width >= 4 and: [ index <= end ]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
isHorizontalRuleFrom: start to: end
	"Three or more -, * or _ characters, optionally separated by spaces, as in --- or * * *"

	| characters |
	characters := (self lineFrom: start to: end) reject: [ :each | each isSeparator ].
	^characters size >= 3 and: [
		('-*_' includes: characters first) and: [
			characters allSatisfy: [ :each | each = characters first ]]]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
setextLevelFrom: start to: end
	"Answer 1 if the line is made of = characters, 2 if it is made of two or more - characters, or 0 otherwise.
	Under a paragraph, these lines make it a heading of that level"

	| characters |
	characters := (self lineFrom: start to: end) withBlanksTrimmed.
	characters isEmpty ifTrue: [ ^0 ].
	(characters allSatisfy: [ :each | each = $= ]) ifTrue: [ ^1 ].
	(characters size >= 2 and: [ characters allSatisfy: [ :each | each = $- ]]) ifTrue: [ ^2 ].
	^0! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
headingLevelFrom: start to: end
	"Answer the level (1 to 6) of the heading in the line, or 0 if the line is not a heading.
	A heading starts with 1 to 6 # characters, followed by a space"

	| level |
	level := self runLengthOf: $# at: start upTo: end.
	(level between: 1 and: 6) ifFalse: [ ^0 ].
	^(start + level > end or: [ (source at: start + level) isSeparator ])
		ifTrue: [ level ]
		ifFalse: [ 0 ]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
footnoteMarkerEndFrom: start to: end
	"Answer the index of the : of a footnote definition, as in [^1]: text, or 0 if the line is not one"

	| first closingIndex |
	first := self firstNonBlankFrom: start to: end.
	(first + 2 <= end and: [ (source at: first) = $[ and: [ (source at: first + 1) = $^ ]]) ifFalse: [ ^0 ].
	closingIndex := self indexOf: $] from: first + 2 upTo: end.
	^(closingIndex > (first + 2) and: [ closingIndex < end and: [ (source at: closingIndex + 1) = $: ]])
		ifTrue: [ closingIndex + 1 ]
		ifFalse: [ 0 ]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
isBlockquoteFrom: start to: end

	| markerIndex |
	markerIndex := self firstNonBlankFrom: start to: end.
	^markerIndex <= end and: [ (source at: markerIndex) = $> ]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
quoteMarkerEndFrom: start to: end
	"The > marker of a quote, and the space after it if there is one"

	| markerIndex |
	markerIndex := self firstNonBlankFrom: start to: end.
	^(markerIndex < end and: [ (source at: markerIndex + 1) = Character space ])
		ifTrue: [ markerIndex + 1 ]
		ifFalse: [ markerIndex ]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
quotedBlockKindFrom: start to: end
	"The kind of block a quoted line has: #blank, #heading, #horizontalRule, #listItem or #paragraph"

	start > end ifTrue: [ ^#blank ].
	(self firstNonBlankFrom: start to: end) > end ifTrue: [ ^#blank ].
	(self headingLevelFrom: start to: end) > 0 ifTrue: [ ^#heading ].
	(self isHorizontalRuleFrom: start to: end) ifTrue: [ ^#horizontalRule ].
	(self listMarkerEndFrom: start to: end) > 0 ifTrue: [ ^#listItem ].
	^#paragraph! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
listMarkerEndFrom: start to: end
	"Answer the index of the last character of the list item marker (as in '- item', '* item', '+ item' or '1. item'),
	or 0 if the line is not a list item. The marker must be followed by a space"

	| markerStart markerEnd |
	markerStart := self firstNonBlankFrom: start to: end.
	markerStart > end ifTrue: [ ^0 ].
	markerEnd := ('-*+' includes: (source at: markerStart))
		ifTrue: [ markerStart ]
		ifFalse: [ self orderedListMarkerEndFrom: markerStart to: end ].
	^(markerEnd > 0 and: [ markerEnd < end and: [ (source at: markerEnd + 1) = $  ]])
		ifTrue: [ markerEnd ]
		ifFalse: [ 0 ]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
orderedListMarkerEndFrom: markerStart to: end
	"Answer the index of the . or ) after the number of an ordered list item (as in '12. item'), or 0 if there is none"

	| digitsEnd |
	digitsEnd := markerStart.
	[ digitsEnd <= end and: [ (source at: digitsEnd) isDigit ]] whileTrue: [ digitsEnd := digitsEnd + 1 ].
	^(digitsEnd > markerStart and: [ digitsEnd <= end and: [ '.)' includes: (source at: digitsEnd) ]])
		ifTrue: [ digitsEnd ]
		ifFalse: [ 0 ]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
isTaskBoxAt: boxStart upTo: end
	"A task box is [ ], [x] or [X], followed by a space or the end of the line"

	^boxStart + 2 <= end and: [
		(source at: boxStart) = $[ and: [
			(' xX' includes: (source at: boxStart + 1)) and: [
				(source at: boxStart + 2) = $] and: [
					boxStart + 3 > end or: [ (source at: boxStart + 3) isSeparator ]]]]]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
isTableRowFrom: start to: end

	| firstIndex |
	firstIndex := self firstNonBlankFrom: start to: end.
	^firstIndex <= end and: [ (source at: firstIndex) = $| ]! !

!MarkdownParser methodsFor: 'testing - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
isTableSeparatorFrom: start to: end
	"As in |---|:---:|"

	| characters |
	characters := (self lineFrom: start to: end) withBlanksTrimmed.
	^(characters beginsWith: '|') and: [
		(characters includes: $-) and: [
			characters allSatisfy: [ :each | '|-: ' includes: each ]]]! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseInlineFrom: start to: end

	| index |
	index := start.
	[ index <= end ] whileTrue: [
		index := self parseInlineAt: index upTo: end ]! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseInlineAt: index upTo: end
	"Parse the inline element starting at index, if there is one. Answer the index where parsing must continue"

	| selector |
	selector := self class inlineParsingSelectors at: (source at: index) ifAbsent: [ ^index + 1 ].
	^self perform: selector with: index with: end! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseEscapeAt: index upTo: end
	"A backslash before a punctuation character escapes it, so it is not taken as markup"

	(index < end and: [ self class escapableCharacters includes: (source at: index + 1) ])
		ifFalse: [ ^index + 1 ].
	self add: #escape from: index to: index.
	^index + 2! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseCodeSpanAt: index upTo: end
	"Parse code like `this` or ``this``. Markup inside code is not parsed"

	| delimiterSize closingIndex |
	delimiterSize := self runLengthOf: $` at: index upTo: end.
	closingIndex := self indexOfRunOf: $` size: delimiterSize from: index + delimiterSize upTo: end.
	closingIndex = 0 ifTrue: [ ^index + delimiterSize ].
	self add: #inlineCode delimitedFrom: index to: closingIndex + delimiterSize - 1 delimiterSize: delimiterSize.
	^closingIndex + delimiterSize! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseEmphasisAt: index upTo: end
	"Parse *italic*, **bold** or ***bold italic*** text (also with _ instead of *)"

	| delimiterSize |
	delimiterSize := self runLengthOf: (source at: index) at: index upTo: end.
	delimiterSize > 3 ifTrue: [ ^index + delimiterSize ].
	^self
		parseDelimitedText: (self class emphasisTypes at: delimiterSize)
		at: index
		delimiterSize: delimiterSize
		upTo: end! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseStrikethroughAt: index upTo: end
	"Parse ~~strikethrough~~ text"

	| delimiterSize |
	delimiterSize := self runLengthOf: $~ at: index upTo: end.
	delimiterSize = 2 ifFalse: [ ^index + delimiterSize ].
	^self parseDelimitedText: #strikethrough at: index delimiterSize: delimiterSize upTo: end! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseDelimitedText: aType at: index delimiterSize: delimiterSize upTo: end
	"Parse text between two runs of delimiterSize equal delimiters, as in **this** or ~~this~~.
	Text inside can have more inline elements. Answer the index where parsing must continue"

	| contentStart closingIndex |
	contentStart := index + delimiterSize.
	(self canOpenDelimitedTextAt: index size: delimiterSize upTo: end) ifFalse: [ ^contentStart ].
	closingIndex := self
		indexOfClosingDelimiter: (source at: index)
		size: delimiterSize
		from: contentStart + 1
		upTo: end.
	closingIndex = 0 ifTrue: [ ^contentStart ].
	self add: aType delimitedFrom: index to: closingIndex + delimiterSize - 1 delimiterSize: delimiterSize.
	self parseInlineFrom: contentStart to: closingIndex - 1.
	^closingIndex + delimiterSize! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseLinkAt: index upTo: end
	"Parse a link like [text](url), a reference link like [text][label], [label][] or [label], or a footnote reference like [^1].
	Answer the index where parsing must continue"

	| closingBracketIndex nextIndex |
	closingBracketIndex := self indexOfClosingBracketFrom: index + 1 upTo: end.
	closingBracketIndex = 0 ifTrue: [ ^index + 1 ].
	(source at: index + 1) = $^ ifTrue: [ ^self parseFootnoteReferenceAt: index closingBracketAt: closingBracketIndex ].
	nextIndex := closingBracketIndex + 1.
	(nextIndex <= end and: [ (source at: nextIndex) = $( ])
		ifTrue: [ ^self parseInlineLinkAt: index closingBracketAt: closingBracketIndex upTo: end ].
	(nextIndex <= end and: [ (source at: nextIndex) = $[ ])
		ifTrue: [ ^self parseReferenceLinkAt: index closingBracketAt: closingBracketIndex upTo: end ].
	^self parseShortcutReferenceLinkAt: index closingBracketAt: closingBracketIndex! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseInlineLinkAt: index closingBracketAt: closingBracketIndex upTo: end
	"As in [text](url)"

	| closingParenthesisIndex |
	closingParenthesisIndex := self indexOf: $) from: closingBracketIndex + 2 upTo: end.
	closingParenthesisIndex = 0 ifTrue: [ ^index + 1 ].
	self addLinkFrom: index closingBracketAt: closingBracketIndex to: closingParenthesisIndex suffix: #linkUrl.
	^closingParenthesisIndex + 1! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseReferenceLinkAt: index closingBracketAt: closingBracketIndex upTo: end
	"As in [text][label], or [label][]. The label must be defined somewhere in the text"

	| referenceEnd label |
	referenceEnd := self indexOf: $] from: closingBracketIndex + 2 upTo: end.
	referenceEnd = 0 ifTrue: [ ^index + 1 ].
	label := referenceEnd = (closingBracketIndex + 2)
		ifTrue: [ source copyFrom: index + 1 to: closingBracketIndex - 1 ]
		ifFalse: [ source copyFrom: closingBracketIndex + 2 to: referenceEnd - 1 ].
	(self isDefinedLabel: label) ifFalse: [ ^index + 1 ].
	self addLinkFrom: index closingBracketAt: closingBracketIndex to: referenceEnd suffix: #linkReference.
	^referenceEnd + 1! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseShortcutReferenceLinkAt: index closingBracketAt: closingBracketIndex
	"As in [label]. Only if the label is defined, so [text in brackets] is not a link"

	(self isDefinedLabel: (source copyFrom: index + 1 to: closingBracketIndex - 1)) ifFalse: [ ^index + 1 ].
	self addLinkFrom: index closingBracketAt: closingBracketIndex to: closingBracketIndex suffix: #linkReference.
	^closingBracketIndex + 1! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseFootnoteReferenceAt: index closingBracketAt: closingBracketIndex
	"As in [^1]"

	closingBracketIndex > (index + 2) ifFalse: [ ^index + 1 ].
	self add: #footnoteReference from: index to: closingBracketIndex.
	^closingBracketIndex + 1! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseImageAt: index upTo: end
	"Parse an image like !![alternative text](url). Answer the index where parsing must continue"

	| continueIndex |
	(index < end and: [ (source at: index + 1) = $[ ]) ifFalse: [ ^index + 1 ].
	continueIndex := self parseLinkAt: index + 1 upTo: end.
	continueIndex > (index + 2) ifTrue: [
		self
			add: #image from: index to: continueIndex - 1;
			add: #markup from: index to: index ].
	^continueIndex! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseAngleBracketAt: index upTo: end
	"Parse autolinks like <https://cuis.st>, HTML comments like <!!-- this --> and HTML tags like <b>"

	| commentEnd closingIndex content |
	(self isAt: index followedBy: '<!!--' upTo: end) ifTrue: [
		commentEnd := self indexOfString: '-->' from: index + 4 upTo: end.
		commentEnd = 0 ifTrue: [ ^index + 1 ].
		self add: #htmlComment from: index to: commentEnd + 2.
		^commentEnd + 3 ].
	closingIndex := self indexOf: $> from: index + 1 upTo: end.
	closingIndex = 0 ifTrue: [ ^index + 1 ].
	content := source copyFrom: index + 1 to: closingIndex - 1.
	(self isAutolink: content) ifTrue: [
		self
			add: #markup from: index to: index;
			add: #autolink from: index + 1 to: closingIndex - 1;
			add: #markup from: closingIndex to: closingIndex.
		^closingIndex + 1 ].
	(self isHtmlTag: content) ifFalse: [ ^index + 1 ].
	^self parseHtmlTagAt: index closingAt: closingIndex upTo: end! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseHtmlTagAt: index closingAt: tagEnd upTo: end
	"Tags are hidden in the preview. Some tags style the text up to their closing tag, as in <b>bold</b>.
	<br> is a line break, and <img src='...'> an image"

	| name styleType closingTag closingIndex |
	name := self htmlTagNameAt: index.
	name = 'br' ifTrue: [ self add: #htmlLineBreak from: index to: tagEnd. ^tagEnd + 1 ].
	name = 'img' ifTrue: [ self add: #image from: index to: tagEnd ].
	self add: #htmlTag from: index to: tagEnd.
	styleType := self class htmlStyleTypes at: name ifAbsent: [ ^tagEnd + 1 ].
	closingTag := '</', name, '>'.
	closingIndex := self indexOfString: closingTag from: tagEnd + 1 upTo: end.
	closingIndex = 0 ifTrue: [ ^tagEnd + 1 ].
	self
		add: styleType from: tagEnd + 1 to: closingIndex - 1;
		add: #htmlTag from: closingIndex to: closingIndex + closingTag size - 1.
	styleType = #inlineCode ifFalse: [ self parseInlineFrom: tagEnd + 1 to: closingIndex - 1 ].
	^closingIndex + closingTag size! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseBareUrlAt: index upTo: end
	"Parse a URL written as is, as in https://cuis.st or www.cuis.st.
	Punctuation at its end is not part of it, as in: see https://cuis.st."

	| urlEnd |
	(index = 1 or: [ (source at: index - 1) isAlphaNumeric not ]) ifFalse: [ ^index + 1 ].
	(#('http://' 'https://' 'www.') anySatisfy: [ :prefix | self isAt: index followedBy: prefix upTo: end ])
		ifFalse: [ ^index + 1 ].
	urlEnd := index.
	[ urlEnd < end and: [ (source at: urlEnd + 1) isSeparator not and: [ (source at: urlEnd + 1) ~= $< ]]]
		whileTrue: [ urlEnd := urlEnd + 1 ].
	[ urlEnd > index and: [ '.,:;!!?)''"*_' includes: (source at: urlEnd) ]] whileTrue: [ urlEnd := urlEnd - 1 ].
	urlEnd - index < 4 ifTrue: [ ^index + 1 ].
	self add: #autolink from: index to: urlEnd.
	^urlEnd + 1! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseEmojiAt: index upTo: end
	"Parse emoji shortcodes like :smile:"

	| closingIndex |
	closingIndex := self indexOf: $: from: index + 1 upTo: (index + 30 min: end).
	closingIndex > (index + 1) ifFalse: [ ^index + 1 ].
	(self class emojis includesKey: (source copyFrom: index + 1 to: closingIndex - 1)) ifFalse: [ ^index + 1 ].
	self add: #emoji from: index to: closingIndex.
	^closingIndex + 1! !

!MarkdownParser methodsFor: 'parsing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
parseMathAt: index upTo: end
	"Parse math like $x^2$. The opening $ must be followed by text, and the closing one preceded by text and not followed by a digit,
	so prices like $5 and $10 are not math"

	| closingIndex |
	(index < end and: [ (source at: index + 1) ~= $$ and: [ (source at: index + 1) isSeparator not ]])
		ifFalse: [ ^index + 1 ].
	closingIndex := index + 1.
	[ closingIndex := self indexOf: $$ from: closingIndex + 1 upTo: end.
	closingIndex > 0 and: [ (self canCloseMathAt: closingIndex upTo: end) not ]] whileTrue.
	closingIndex = 0 ifTrue: [ ^index + 1 ].
	self
		add: #markup from: index to: index;
		add: #math from: index + 1 to: closingIndex - 1;
		add: #markup from: closingIndex to: closingIndex.
	^closingIndex + 1! !

!MarkdownParser methodsFor: 'testing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
canOpenDelimitedTextAt: index size: delimiterSize upTo: end
	"An opening delimiter must be followed by text, as in *this*, not as in a * b.
	An _ opening delimiter must not be inside a word, as in snake_case"

	| afterIndex |
	afterIndex := index + delimiterSize.
	(afterIndex <= end and: [ (source at: afterIndex) isSeparator not ]) ifFalse: [ ^false ].
	^(source at: index) ~= $_ or: [ index = 1 or: [ (source at: index - 1) isAlphaNumeric not ]]! !

!MarkdownParser methodsFor: 'testing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
canCloseDelimitedTextAt: index size: delimiterSize upTo: end
	"A closing delimiter must be preceded by text, as in *this*, not as in *this *.
	An _ closing delimiter must not be inside a word, as in snake_case"

	| afterIndex |
	(source at: index - 1) isSeparator ifTrue: [ ^false ].
	afterIndex := index + delimiterSize.
	^(source at: index) ~= $_ or: [ afterIndex > end or: [ (source at: afterIndex) isAlphaNumeric not ]]! !

!MarkdownParser methodsFor: 'testing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
canCloseMathAt: index upTo: end

	^(source at: index - 1) isSeparator not and: [
		index = end or: [ (source at: index + 1) isDigit not ]]! !

!MarkdownParser methodsFor: 'testing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
isAutolink: aString
	"As in <https://cuis.st> or <someone@cuis.st>"

	(aString isEmpty or: [ aString anySatisfy: [ :each | each isSeparator or: [ each = $< ]]]) ifTrue: [ ^false ].
	^(aString includesSubString: '://')
		or: [ (aString beginsWith: 'mailto:')
		or: [ (aString includes: $@) and: [ aString includes: $. ]]]! !

!MarkdownParser methodsFor: 'testing - inline' stamp: 'AP 11/Oct/2026 12:00:00'!
isHtmlTag: aString
	"The text between < and >: a tag name (after / for closing tags), maybe followed by attributes"

	| nameStart |
	nameStart := (aString beginsWith: '/') ifTrue: [ 2 ] ifFalse: [ 1 ].
	^aString size >= nameStart and: [ (aString at: nameStart) isLetter ]! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
htmlTagNameAt: index
	"The lowercase name of the tag starting at index, as 'b' for <b> or '/b' for </b>"

	| nameEnd |
	nameEnd := index + 1.
	(source at: nameEnd) = $/ ifTrue: [ nameEnd := nameEnd + 1 ].
	[ nameEnd <= source size and: [ (source at: nameEnd) isAlphaNumeric ]] whileTrue: [ nameEnd := nameEnd + 1 ].
	^(source copyFrom: index + 1 to: nameEnd - 1) asLowercase! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
addLinkFrom: start closingBracketAt: closingBracketIndex to: end suffix: aType
	"Add the ranges of a link: its brackets are markup, then its text, and then its url or reference (of aType)"

	self
		add: #link from: start to: end;
		add: #markup from: start to: start;
		add: #linkText from: start + 1 to: closingBracketIndex - 1;
		add: #markup from: closingBracketIndex to: closingBracketIndex;
		add: aType from: closingBracketIndex + 1 to: end.
	self parseInlineFrom: start + 1 to: closingBracketIndex - 1! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
add: aType from: start to: end
	"Empty ranges are ignored"

	start <= end ifTrue: [
		ranges add: (MarkdownRange type: aType from: start to: end) ]! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
insert: aType from: start to: end at: anIndex
	"Add a range before the ranges already added from anIndex on, so it is styled before them"

	ranges add: (MarkdownRange type: aType from: start to: end) beforeIndex: anIndex! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
add: aType delimitedFrom: start to: end delimiterSize: delimiterSize
	"Add ranges for text between delimiters, as in **this**: the delimiters are markup and the text between them is of aType"

	self
		add: #markup from: start to: start + delimiterSize - 1;
		add: aType from: start + delimiterSize to: end - delimiterSize;
		add: #markup from: end - delimiterSize + 1 to: end! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
rangeOfType: aType in: aRange
	"The first range of aType inside aRange, or nil if there is none"

	^ranges
		detect: [ :each | each type = aType and: [ aRange contains: each ]]
		ifNone: [ nil ]! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
lineFrom: start to: end

	^source copyFrom: start to: end! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
firstNonBlankFrom: start to: end
	"Answer the index of the first non blank character between start and end, or end + 1 if there is none"

	| index |
	index := start.
	[ index <= end and: [ (source at: index) isSeparator ]] whileTrue: [ index := index + 1 ].
	^index! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
runLengthOf: aCharacter at: index upTo: end
	"Answer how many consecutive aCharacters there are starting at index"

	| runEnd |
	runEnd := index.
	[ runEnd <= end and: [ (source at: runEnd) = aCharacter ]] whileTrue: [ runEnd := runEnd + 1 ].
	^runEnd - index! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
isAt: index followedBy: aString upTo: end
	"Answer true if aString is at index (ignoring case), before end"

	^index + aString size - 1 <= end and: [
		(source copyFrom: index to: index + aString size - 1) asLowercase = aString ]! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
indexOf: aCharacter from: start upTo: end
	"Answer the index of the first aCharacter between start and end, or 0 if there is none"

	start to: end do: [ :index |
		(source at: index) = aCharacter ifTrue: [ ^index ]].
	^0! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
indexOfString: aString from: start upTo: end
	"Answer the index of the first aString (ignoring case) between start and end, or 0 if there is none"

	start to: end - aString size + 1 do: [ :index |
		(self isAt: index followedBy: aString upTo: end) ifTrue: [ ^index ]].
	^0! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
indexOfClosingBracketFrom: start upTo: end
	"Answer the index of the ] that closes a [ before start, or 0 if there is none. Brackets can be nested, as in [!![image](url)](url)"

	| depth index |
	depth := 0.
	index := start.
	[ index <= end ] whileTrue: [ | character |
		character := source at: index.
		character = $\ ifTrue: [ index := index + 1 ].
		character = $[ ifTrue: [ depth := depth + 1 ].
		character = $] ifTrue: [
			depth = 0 ifTrue: [ ^index ].
			depth := depth - 1 ].
		index := index + 1 ].
	^0! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
indexOfRunOf: aCharacter size: aSize from: start upTo: end
	"Answer the index of the first run of exactly aSize aCharacters between start and end, or 0 if there is none"

	| index runSize |
	index := start.
	[ index <= end ] whileTrue: [
		runSize := self runLengthOf: aCharacter at: index upTo: end.
		runSize = aSize ifTrue: [ ^index ].
		index := index + (runSize max: 1) ].
	^0! !

!MarkdownParser methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
indexOfClosingDelimiter: aCharacter size: aSize from: start upTo: end
	"Answer the index of the first run of exactly aSize aCharacters between start and end that can close delimited text, or 0 if there is none.
	Escaped characters are skipped"

	| index runSize |
	index := start.
	[ index <= end ] whileTrue: [
		(source at: index) = $\
			ifTrue: [ index := index + 2 ]
			ifFalse: [
				runSize := self runLengthOf: aCharacter at: index upTo: end.
				(runSize = aSize and: [ self canCloseDelimitedTextAt: index size: aSize upTo: end ])
					ifTrue: [ ^index ].
				index := index + (runSize max: 1) ]].
	^0! !

!MarkdownParser class methodsFor: 'parsing' stamp: 'AP 11/Oct/2026 12:00:00'!
rangesIn: aString

	^self new parse: aString! !

!MarkdownParser class methodsFor: 'parsing' stamp: 'AP 11/Oct/2026 12:00:00'!
linkUrlAt: anIndex in: aString
	"Answer the url of the link at anIndex of aString, or nil if there is no link there"

	| parser |
	parser := self new.
	parser parse: aString.
	^(parser linkAt: anIndex) ifNotNil: [ :link | parser urlOfLink: link ]! !

!MarkdownParser class methodsFor: 'anchors' stamp: 'AP 11/Oct/2026 12:00:00'!
anchorFor: aHeadingText
	"The anchor of a heading, as GitHub makes them: lowercase, without punctuation and with - instead of spaces.
	Links like [ver tablas](#tablas-y-listas) go to the heading 'Tablas y listas'"

	^(aHeadingText withBlanksTrimmed asLowercase
		select: [ :each | each isAlphaNumeric or: [ ' -_' includes: each ]])
			collect: [ :each | each = Character space ifTrue: [ $- ] ifFalse: [ each ]]! !

!MarkdownParser class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
normalizedLabel: aString
	"Labels of reference links ignore case and blanks around them"

	^aString withBlanksTrimmed asLowercase! !

!MarkdownParser class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
headingTypes

	^#(#heading1 #heading2 #heading3 #heading4 #heading5 #heading6)! !

!MarkdownParser class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
emphasisTypes
	"Indexed by the number of delimiters, as in *italic*, **bold** and ***bold italic***"

	^#(#italic #bold #boldItalic)! !

!MarkdownParser class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
escapableCharacters
	"Any ASCII punctuation character can be escaped"

	^'!!"#$%&''()*+,-./:;<=>?@[\]^_`{|}~'! !

!MarkdownParser class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
htmlStyleTypes
	"HTML tags that style the text up to their closing tag, and the type of its range"

	^`Dictionary new
		at: 'b' put: #bold;
		at: 'strong' put: #bold;
		at: 'i' put: #italic;
		at: 'em' put: #italic;
		at: 's' put: #strikethrough;
		at: 'del' put: #strikethrough;
		at: 'strike' put: #strikethrough;
		at: 'code' put: #inlineCode;
		at: 'kbd' put: #inlineCode;
		at: 'u' put: #underline;
		at: 'ins' put: #underline;
		at: 'mark' put: #highlight;
		at: 'sup' put: #superscript;
		at: 'sub' put: #subscript;
		yourself`! !

!MarkdownParser class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
emojis
	"Emoji shortcodes, as in :smile:, and the character they are shown as.
	Only characters that the fonts that come with Cuis can show"

	^`Dictionary new
		at: 'smile' put: '☺';
		at: 'slightly_smiling_face' put: '☺';
		at: 'blush' put: '☺';
		at: 'frowning' put: '☹';
		at: 'disappointed' put: '☹';
		at: 'heart' put: '♥';
		at: 'star' put: '★';
		at: 'sparkles' put: '✨';
		at: 'check' put: '✔';
		at: 'heavy_check_mark' put: '✔';
		at: 'white_check_mark' put: '✔';
		at: 'x' put: '✘';
		at: 'warning' put: '⚠';
		at: 'zap' put: '⚡';
		at: 'sunny' put: '☀';
		at: 'cloud' put: '☁';
		at: 'umbrella' put: '☂';
		at: 'snowman' put: '☃';
		at: 'coffee' put: '☕';
		at: 'airplane' put: '✈';
		at: 'phone' put: '☎';
		at: 'telephone' put: '☎';
		at: 'email' put: '✉';
		at: 'envelope' put: '✉';
		at: 'pencil' put: '✏';
		at: 'pencil2' put: '✏';
		at: 'scissors' put: '✂';
		at: 'hourglass' put: '⌛';
		at: 'watch' put: '⌚';
		at: 'musical_note' put: '♪';
		at: 'notes' put: '♫';
		at: 'point_right' put: '☞';
		at: 'point_left' put: '☜';
		at: 'point_up' put: '☝';
		at: 'v' put: '✌';
		at: 'skull' put: '☠';
		at: 'radioactive' put: '☢';
		at: 'recycle' put: '♻';
		at: 'anchor' put: '⚓';
		at: 'flag' put: '⚑';
		at: 'yin_yang' put: '☯';
		at: 'peace_symbol' put: '☮';
		at: 'spades' put: '♠';
		at: 'clubs' put: '♣';
		at: 'hearts' put: '♥';
		at: 'diamonds' put: '♦';
		at: 'arrow_right' put: '→';
		at: 'arrow_left' put: '←';
		at: 'arrow_up' put: '↑';
		at: 'arrow_down' put: '↓';
		at: 'infinity' put: '∞';
		at: 'copyright' put: '©';
		at: 'registered' put: '®';
		at: 'tm' put: '™';
		yourself`! !

!MarkdownParser class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
inlineParsingSelectors
	"Characters that can start an inline element, and the message that parses it"

	^`Dictionary new
		at: $\ put: #parseEscapeAt:upTo:;
		at: $` put: #parseCodeSpanAt:upTo:;
		at: $* put: #parseEmphasisAt:upTo:;
		at: $_ put: #parseEmphasisAt:upTo:;
		at: $~ put: #parseStrikethroughAt:upTo:;
		at: $[ put: #parseLinkAt:upTo:;
		at: $!! put: #parseImageAt:upTo:;
		at: $< put: #parseAngleBracketAt:upTo:;
		at: $h put: #parseBareUrlAt:upTo:;
		at: $w put: #parseBareUrlAt:upTo:;
		at: $: put: #parseEmojiAt:upTo:;
		at: $$ put: #parseMathAt:upTo:;
		yourself`! !


!MarkdownCodeHighlighter methodsFor: 'initialization' stamp: 'AP 11/Oct/2026 12:00:00'!
initializeSource: aString from: aStart to: anEnd language: aLanguage

	source := aString.
	start := aStart.
	end := anEnd.
	language := aLanguage ifNil: [ '' ].
	ranges := OrderedCollection new! !

!MarkdownCodeHighlighter methodsFor: 'highlighting' stamp: 'AP 11/Oct/2026 12:00:00'!
ranges
	"Answer the ranges of the code. Code without a language is not highlighted"

	language isEmpty ifTrue: [ ^ranges ].
	(self class smalltalkNames includes: language)
		ifTrue: [ self addSmalltalkRanges ]
		ifFalse: [ self addGenericRanges ].
	^ranges! !

!MarkdownCodeHighlighter methodsFor: 'highlighting' stamp: 'AP 11/Oct/2026 12:00:00'!
addSmalltalkRanges
	"Smalltalk code is highlighted by Shout, as in a Workspace. Its range types are prefixed, as in #'st-keyword'"

	| parser |
	parser := SHParserST80 new.
	parser source: (source copyFrom: start to: end).
	[ parser parse: false ] on: Error do: [ :error | error return: nil ].
	parser ranges ifNil: [ ^self ].
	parser ranges do: [ :each |
		ranges add: (MarkdownRange
			type: (self class smalltalkTypePrefix, each rangeType) asSymbol
			from: each start + start - 1
			to: each end + start - 1) ]! !

!MarkdownCodeHighlighter methodsFor: 'highlighting' stamp: 'AP 11/Oct/2026 12:00:00'!
addGenericRanges
	"Other languages are highlighted line by line: comments, strings, numbers and common keywords"

	| lineStart |
	lineStart := start.
	[ lineStart <= end ] whileTrue: [ | lineEnd |
		lineEnd := lineStart.
		[ lineEnd <= end and: [ (source at: lineEnd) ~= Character newLineCharacter ]] whileTrue: [ lineEnd := lineEnd + 1 ].
		self addTokensFrom: lineStart to: lineEnd - 1.
		lineStart := lineEnd + 1 ]! !

!MarkdownCodeHighlighter methodsFor: 'highlighting' stamp: 'AP 11/Oct/2026 12:00:00'!
addTokensFrom: lineStart to: lineEnd

	| index |
	index := lineStart.
	[ index <= lineEnd ] whileTrue: [
		index := self addTokenAt: index upTo: lineEnd ]! !

!MarkdownCodeHighlighter methodsFor: 'highlighting' stamp: 'AP 11/Oct/2026 12:00:00'!
addTokenAt: index upTo: lineEnd
	"Add the range of the token at index if it is a comment, string, number or keyword. Answer the index of the next token"

	| character tokenEnd |
	(self lineCommentStartsAt: index upTo: lineEnd) ifTrue: [
		self add: #codeComment from: index to: lineEnd.
		^lineEnd + 1 ].
	(self blockCommentEndFrom: index upTo: lineEnd) ifNotNil: [ :commentEnd |
		self add: #codeComment from: index to: commentEnd.
		^commentEnd + 1 ].
	character := source at: index.
	('"''`' includes: character) ifTrue: [
		tokenEnd := self indexOfClosingQuote: character from: index + 1 upTo: lineEnd.
		self add: #codeString from: index to: tokenEnd.
		^tokenEnd + 1 ].
	(self isWordCharacter: character) ifFalse: [ ^index + 1 ].
	tokenEnd := index.
	[ tokenEnd < lineEnd and: [ self isWordCharacter: (source at: tokenEnd + 1) ]] whileTrue: [ tokenEnd := tokenEnd + 1 ].
	character isDigit ifTrue: [
		tokenEnd := self numberEndFrom: tokenEnd upTo: lineEnd.
		self add: #codeNumber from: index to: tokenEnd.
		^tokenEnd + 1 ].
	(self class keywords includes: (source copyFrom: index to: tokenEnd) asLowercase)
		ifTrue: [ self add: #codeKeyword from: index to: tokenEnd ].
	^tokenEnd + 1! !

!MarkdownCodeHighlighter methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
lineCommentStartsAt: index upTo: lineEnd

	^(self class lineCommentPrefixes at: language ifAbsent: [ #('//' '#') ])
		anySatisfy: [ :prefix | self isAt: index followedBy: prefix upTo: lineEnd ]! !

!MarkdownCodeHighlighter methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
blockCommentEndFrom: index upTo: lineEnd
	"If a comment like /* this */ or <!!-- this --> starts at index, answer where it ends (the end of the line if it does not end in it). Answer nil otherwise"

	#(#('/*' '*/') #('<!!--' '-->')) do: [ :delimiters |
		(self isAt: index followedBy: delimiters first upTo: lineEnd) ifTrue: [
			index + delimiters first size to: lineEnd - delimiters last size + 1 do: [ :closingIndex |
				(self isAt: closingIndex followedBy: delimiters last upTo: lineEnd)
					ifTrue: [ ^closingIndex + delimiters last size - 1 ]].
			^lineEnd ]].
	^nil! !

!MarkdownCodeHighlighter methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
indexOfClosingQuote: aCharacter from: index upTo: lineEnd
	"Escaped quotes (as in 'it\'s') do not close strings. Strings not closed end at the end of the line"

	| closingIndex |
	closingIndex := index.
	[ closingIndex <= lineEnd ] whileTrue: [
		(source at: closingIndex) = aCharacter ifTrue: [ ^closingIndex ].
		closingIndex := closingIndex + ((source at: closingIndex) = $\ ifTrue: [ 2 ] ifFalse: [ 1 ]) ].
	^lineEnd! !

!MarkdownCodeHighlighter methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
numberEndFrom: wordEnd upTo: lineEnd
	"Numbers can have decimals, as in 3.14"

	| numberEnd |
	numberEnd := wordEnd.
	[ numberEnd + 1 < lineEnd and: [ (source at: numberEnd + 1) = $. and: [ (source at: numberEnd + 2) isDigit ]]] whileTrue: [
		numberEnd := numberEnd + 2.
		[ numberEnd < lineEnd and: [ (source at: numberEnd + 1) isAlphaNumeric ]] whileTrue: [ numberEnd := numberEnd + 1 ]].
	^numberEnd! !

!MarkdownCodeHighlighter methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
isWordCharacter: aCharacter

	^aCharacter isAlphaNumeric or: [ aCharacter = $_ ]! !

!MarkdownCodeHighlighter methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
isAt: index followedBy: aString upTo: lineEnd

	^index + aString size - 1 <= lineEnd and: [
		(source copyFrom: index to: index + aString size - 1) = aString ]! !

!MarkdownCodeHighlighter methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
add: aType from: aStart to: anEnd

	aStart <= anEnd ifTrue: [
		ranges add: (MarkdownRange type: aType from: aStart to: anEnd) ]! !

!MarkdownCodeHighlighter class methodsFor: 'highlighting' stamp: 'AP 11/Oct/2026 12:00:00'!
rangesIn: aString from: start to: end language: aLanguage
	"Answer the MarkdownRanges that highlight the code of aLanguage written in aString from start to end"

	^(self new initializeSource: aString from: start to: end language: aLanguage) ranges! !

!MarkdownCodeHighlighter class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
smalltalkNames

	^#('smalltalk' 'st' 'cuis' 'squeak' 'pharo')! !

!MarkdownCodeHighlighter class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
smalltalkTypePrefix
	"Smalltalk code is highlighted by Shout. Its range types are the ones of Shout with this prefix, as in #'st-keyword'"

	^'st-'! !

!MarkdownCodeHighlighter class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
lineCommentPrefixes
	"How line comments start in each language. Other languages use // and #"

	| prefixes |
	prefixes := Dictionary new.
	#('c' 'cpp' 'c++' 'java' 'javascript' 'js' 'typescript' 'ts' 'go' 'rust' 'swift' 'kotlin' 'csharp' 'cs' 'scala' 'dart' 'php' 'json')
		do: [ :each | prefixes at: each put: #('//') ].
	#('python' 'py' 'ruby' 'rb' 'sh' 'bash' 'shell' 'zsh' 'yaml' 'yml' 'toml' 'perl' 'r' 'powershell' 'ps1' 'makefile' 'dockerfile' 'elixir')
		do: [ :each | prefixes at: each put: #('#') ].
	#('sql' 'haskell' 'hs' 'lua' 'ada' 'elm') do: [ :each | prefixes at: each put: #('--') ].
	#('lisp' 'scheme' 'clojure' 'racket' 'asm' 'assembly' 'nasm') do: [ :each | prefixes at: each put: #(';') ].
	#('latex' 'tex' 'matlab' 'octave' 'erlang' 'prolog') do: [ :each | prefixes at: each put: #('%') ].
	#('html' 'xml' 'css' 'markdown' 'md' 'text' 'txt' 'plain') do: [ :each | prefixes at: each put: #() ].
	^prefixes! !

!MarkdownCodeHighlighter class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
keywords
	"Keywords of the most common languages"

	^`#('if' 'else' 'elif' 'elsif' 'then' 'end' 'for' 'foreach' 'while' 'do' 'loop' 'until' 'repeat' 'return' 'break' 'continue' 'goto'
		'switch' 'case' 'default' 'match' 'when' 'try' 'catch' 'except' 'finally' 'throw' 'throws' 'raise' 'with' 'as' 'in' 'of' 'is' 'not' 'and' 'or'
		'function' 'func' 'fn' 'fun' 'def' 'defun' 'define' 'lambda' 'class' 'struct' 'enum' 'interface' 'trait' 'impl' 'type' 'typedef' 'module' 'package' 'namespace'
		'import' 'from' 'export' 'include' 'require' 'use' 'using' 'extends' 'implements' 'new' 'delete' 'this' 'self' 'super'
		'var' 'let' 'const' 'val' 'mut' 'static' 'final' 'public' 'private' 'protected' 'abstract' 'virtual' 'override' 'async' 'await' 'yield'
		'void' 'int' 'long' 'short' 'float' 'double' 'char' 'bool' 'boolean' 'string' 'byte' 'unsigned' 'signed'
		'true' 'false' 'null' 'nil' 'none' 'undefined' 'select' 'where' 'insert' 'update' 'into' 'values' 'create' 'table' 'join' 'on' 'by' 'order' 'group')
			asSet`! !


!MarkdownMath methodsFor: 'initialization' stamp: 'AP 11/Oct/2026 12:00:00'!
initializeSource: aString

	source := aString! !

!MarkdownMath methodsFor: 'converting' stamp: 'AP 11/Oct/2026 12:00:00'!
pieces
	"Answer the math as a sequence of Associations from a String to its kind: #normal, #superscript or #subscript"

	pieces := OrderedCollection new.
	index := 1.
	[ index <= source size ] whileTrue: [
		self parseWith: #normal.
		index <= source size ifTrue: [ "an unbalanced }" index := index + 1 ]].
	^pieces! !

!MarkdownMath methodsFor: 'converting' stamp: 'AP 11/Oct/2026 12:00:00'!
asText
	"Superscripts and subscripts are shown with the emphasis of their kind"

	^self pieces
		inject: Text new
		into: [ :text :piece |
			text, (Text string: piece key attributes: (self class attributesFor: piece value)) ]! !

!MarkdownMath methodsFor: 'converting' stamp: 'AP 11/Oct/2026 12:00:00'!
asHtml

	^self pieces
		inject: ''
		into: [ :html :piece | | escaped |
			escaped := MarkdownHtmlExporter escape: piece key.
			html, (piece value = #normal
				ifTrue: [ escaped ]
				ifFalse: [ | tag |
					tag := piece value = #superscript ifTrue: [ 'sup' ] ifFalse: [ 'sub' ].
					'<', tag, '>', escaped, '</', tag, '>' ]) ]! !

!MarkdownMath methodsFor: 'parsing' stamp: 'AP 11/Oct/2026 12:00:00'!
parseWith: aKind
	"Parse up to the end of the source, or up to the } that closes the current group"

	[ index <= source size and: [ (source at: index) ~= $} ]] whileTrue: [
		self parseElementWith: aKind ]! !

!MarkdownMath methodsFor: 'parsing' stamp: 'AP 11/Oct/2026 12:00:00'!
parseElementWith: aKind

	| character |
	character := source at: index.
	index := index + 1.
	character = $\ ifTrue: [ ^self parseCommandWith: aKind ].
	character = ${ ifTrue: [ ^self parseGroupWith: aKind ].
	character = $^ ifTrue: [ ^self parseArgumentWith: #superscript ].
	character = $_ ifTrue: [ ^self parseArgumentWith: #subscript ].
	self add: character asString with: aKind! !

!MarkdownMath methodsFor: 'parsing' stamp: 'AP 11/Oct/2026 12:00:00'!
parseGroupWith: aKind
	"After a {, up to its }"

	self parseWith: aKind.
	index <= source size ifTrue: [ index := index + 1 ]! !

!MarkdownMath methodsFor: 'parsing' stamp: 'AP 11/Oct/2026 12:00:00'!
parseArgumentWith: aKind
	"The argument of ^, _ or a command: a group like {n+1}, a command like \alpha or a single character. Spaces before it are skipped"

	[ index <= source size and: [ (source at: index) = Character space ]] whileTrue: [ index := index + 1 ].
	index <= source size ifTrue: [ self parseElementWith: aKind ]! !

!MarkdownMath methodsFor: 'parsing' stamp: 'AP 11/Oct/2026 12:00:00'!
parseWrappedArgumentWith: aKind
	"An argument with parentheses if it is longer than a character, as the numerator in (a+b)/2"

	| needsParentheses |
	needsParentheses := self nextArgumentSize > 1.
	needsParentheses ifTrue: [ self add: '(' with: aKind ].
	self parseArgumentWith: aKind.
	needsParentheses ifTrue: [ self add: ')' with: aKind ]! !

!MarkdownMath methodsFor: 'parsing' stamp: 'AP 11/Oct/2026 12:00:00'!
parseCommandWith: aKind
	"After a \. Commands are symbols (as \alpha), \frac{a}{b}, \sqrt{x}, or are shown by their name (as \sin)"

	| nameEnd name |
	index > source size ifTrue: [ ^self ].
	nameEnd := index.
	[ nameEnd <= source size and: [ (source at: nameEnd) isLetter ]] whileTrue: [ nameEnd := nameEnd + 1 ].
	nameEnd = index ifTrue: [
		"A command that is a single character, as \, or \{"
		index := index + 1.
		^self add: (('{}$%#&_' includes: (source at: index - 1))
			ifTrue: [ (source at: index - 1) asString ]
			ifFalse: [ ' ' ]) with: aKind ].
	name := source copyFrom: index to: nameEnd - 1.
	index := nameEnd.
	name = 'frac' ifTrue: [
		self parseWrappedArgumentWith: aKind.
		self add: '/' with: aKind.
		^self parseWrappedArgumentWith: aKind ].
	name = 'sqrt' ifTrue: [
		self add: '√' with: aKind.
		^self parseWrappedArgumentWith: aKind ].
	name = 'mathbb' ifTrue: [ ^self parseBlackboardLetterWith: aKind ].
	(#('text' 'mathrm' 'mathbf' 'mathit' 'operatorname' 'textbf' 'textit') includes: name) ifTrue: [ ^self parseArgumentWith: aKind ].
	(#('left' 'right' 'big' 'Big' 'bigg' 'Bigg' 'displaystyle' 'limits' 'nolimits') includes: name) ifTrue: [ ^self ].
	self add: (self class symbols at: name ifAbsent: [ name ]) with: aKind! !

!MarkdownMath methodsFor: 'parsing' stamp: 'AP 11/Oct/2026 12:00:00'!
parseBlackboardLetterWith: aKind
	"As in \mathbb{R}"

	| outerPieces letters |
	outerPieces := pieces.
	pieces := OrderedCollection new.
	self parseArgumentWith: #normal.
	letters := pieces inject: '' into: [ :all :each | all, each key ].
	pieces := outerPieces.
	self
		add: (letters inject: '' into: [ :all :each | all, (self class blackboardLetters at: each asString ifAbsent: [ each asString ]) ])
		with: aKind! !

!MarkdownMath methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
nextArgumentSize
	"How many characters the next argument has: the characters of a group like {n+1}, or 1"

	| depth argumentEnd |
	(index <= source size and: [ (source at: index) = ${ ]) ifFalse: [ ^1 ].
	depth := 0.
	argumentEnd := index.
	[ argumentEnd <= source size ] whileTrue: [
		(source at: argumentEnd) = ${ ifTrue: [ depth := depth + 1 ].
		(source at: argumentEnd) = $} ifTrue: [
			depth := depth - 1.
			depth = 0 ifTrue: [ ^argumentEnd - index - 1 ]].
		argumentEnd := argumentEnd + 1 ].
	^argumentEnd - index - 1! !

!MarkdownMath methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
add: aString with: aKind
	"Consecutive pieces of the same kind are joined"

	(pieces notEmpty and: [ pieces last value = aKind ])
		ifTrue: [ pieces at: pieces size put: pieces last key, aString -> aKind ]
		ifFalse: [ pieces add: aString -> aKind ]! !

!MarkdownMath class methodsFor: 'converting' stamp: 'AP 11/Oct/2026 12:00:00'!
textFor: aString
	"Answer a Text with the math written in aString (in the notation of LaTeX), as in: $x^2 + \alpha$"

	^(self new initializeSource: aString) asText! !

!MarkdownMath class methodsFor: 'converting' stamp: 'AP 11/Oct/2026 12:00:00'!
htmlFor: aString

	^(self new initializeSource: aString) asHtml! !

!MarkdownMath class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
attributesFor: aKind

	aKind = #superscript ifTrue: [ ^{ TextEmphasis superscript } ].
	aKind = #subscript ifTrue: [ ^{ TextEmphasis subscript } ].
	^#()! !

!MarkdownMath class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
blackboardLetters

	^`Dictionary new
		at: 'N' put: 'ℕ';
		at: 'Z' put: 'ℤ';
		at: 'Q' put: 'ℚ';
		at: 'R' put: 'ℝ';
		at: 'C' put: 'ℂ';
		at: 'P' put: 'ℙ';
		yourself`! !

!MarkdownMath class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
symbols
	"LaTeX commands and the character they are shown as"

	^`Dictionary new
		at: 'alpha' put: 'α'; at: 'beta' put: 'β'; at: 'gamma' put: 'γ'; at: 'delta' put: 'δ'; at: 'epsilon' put: 'ε'; at: 'varepsilon' put: 'ε';
		at: 'zeta' put: 'ζ'; at: 'eta' put: 'η'; at: 'theta' put: 'θ'; at: 'iota' put: 'ι'; at: 'kappa' put: 'κ'; at: 'lambda' put: 'λ';
		at: 'mu' put: 'μ'; at: 'nu' put: 'ν'; at: 'xi' put: 'ξ'; at: 'pi' put: 'π'; at: 'rho' put: 'ρ'; at: 'sigma' put: 'σ'; at: 'tau' put: 'τ';
		at: 'upsilon' put: 'υ'; at: 'phi' put: 'φ'; at: 'varphi' put: 'φ'; at: 'chi' put: 'χ'; at: 'psi' put: 'ψ'; at: 'omega' put: 'ω';
		at: 'Gamma' put: 'Γ'; at: 'Delta' put: 'Δ'; at: 'Theta' put: 'Θ'; at: 'Lambda' put: 'Λ'; at: 'Xi' put: 'Ξ'; at: 'Pi' put: 'Π';
		at: 'Sigma' put: 'Σ'; at: 'Phi' put: 'Φ'; at: 'Psi' put: 'Ψ'; at: 'Omega' put: 'Ω';
		at: 'times' put: '×'; at: 'cdot' put: '·'; at: 'div' put: '÷'; at: 'pm' put: '±'; at: 'mp' put: '∓';
		at: 'leq' put: '≤'; at: 'le' put: '≤'; at: 'geq' put: '≥'; at: 'ge' put: '≥'; at: 'neq' put: '≠'; at: 'ne' put: '≠';
		at: 'approx' put: '≈'; at: 'equiv' put: '≡'; at: 'sim' put: '∼'; at: 'propto' put: '∝'; at: 'infty' put: '∞';
		at: 'partial' put: '∂'; at: 'nabla' put: '∇'; at: 'sum' put: '∑'; at: 'prod' put: '∏'; at: 'int' put: '∫'; at: 'oint' put: '∮';
		at: 'forall' put: '∀'; at: 'exists' put: '∃'; at: 'nexists' put: '∄'; at: 'in' put: '∈'; at: 'notin' put: '∉';
		at: 'subset' put: '⊂'; at: 'subseteq' put: '⊆'; at: 'supset' put: '⊃'; at: 'supseteq' put: '⊇';
		at: 'cup' put: '∪'; at: 'cap' put: '∩'; at: 'emptyset' put: '∅'; at: 'varnothing' put: '∅'; at: 'setminus' put: '∖';
		at: 'to' put: '→'; at: 'rightarrow' put: '→'; at: 'leftarrow' put: '←'; at: 'gets' put: '←'; at: 'leftrightarrow' put: '↔';
		at: 'Rightarrow' put: '⇒'; at: 'Leftarrow' put: '⇐'; at: 'Leftrightarrow' put: '⇔'; at: 'implies' put: '⇒'; at: 'iff' put: '⇔';
		at: 'mapsto' put: '↦'; at: 'land' put: '∧'; at: 'wedge' put: '∧'; at: 'lor' put: '∨'; at: 'vee' put: '∨';
		at: 'neg' put: '¬'; at: 'lnot' put: '¬'; at: 'oplus' put: '⊕'; at: 'otimes' put: '⊗'; at: 'circ' put: '∘'; at: 'bullet' put: '•';
		at: 'ldots' put: '…'; at: 'dots' put: '…'; at: 'cdots' put: '⋯'; at: 'angle' put: '∠'; at: 'perp' put: '⊥'; at: 'parallel' put: '∥';
		at: 'mid' put: '|'; at: 'deg' put: '°'; at: 'prime' put: '′'; at: 'hbar' put: 'ℏ'; at: 'ell' put: 'ℓ'; at: 'aleph' put: 'ℵ';
		at: 'quad' put: '  '; at: 'qquad' put: '    ';
		yourself`! !


!MarkdownTextStyler methodsFor: 'styling' stamp: 'AP 11/Oct/2026 12:00:00'!
getReady

	self terminateBackgroundStylingProcess! !

!MarkdownTextStyler methodsFor: 'styling' stamp: 'AP 11/Oct/2026 12:00:00'!
parseText

	ranges := MarkdownParser rangesIn: formattedText asPlainString! !

!MarkdownTextStyler methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
privateAutoHighlight
	"Markdown text has no auto highlight"! !

!MarkdownTextStyler methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
privateConvertAssignmentsOffset: delta
	"Markdown text is styled, but its characters are never changed"! !

!MarkdownTextStyler methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
privateStyle

	self optimizeForMutationSpeed.
	ranges do: [ :range |
		(self class attributesFor: range type) do: [ :attribute |
			formattedText addAttribute: attribute from: range start to: range end ]]! !

!MarkdownTextStyler methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
optimizeForMutationSpeed
	"Adding many attributes is much faster on a Text without a RunArray (see SHTextStylerST80 >> #optimizeForMutationSpeed:).
	Only do it when styling the model contents, as the model must keep the optimized Text"

	| optimizedText |
	formattedText == textModel actualContents ifFalse: [ ^self ].
	optimizedText := formattedText optimizedForMutationSpeed.
	formattedText == optimizedText ifTrue: [ ^self ].
	"We may be running in a background process, so check again in case the model contents changed"
	formattedText == textModel actualContents ifTrue: [
		formattedText := optimizedText.
		textModel basicActualContents: optimizedText ]! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
attributesFor: aType
	"Smalltalk code in code blocks has the range types of Shout, with a prefix. Their attributes are the ones Shout uses"

	^self styleTable at: aType ifAbsent: [
		self styleTable at: aType put: (self shoutAttributesFor: aType) ]! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
shoutAttributesFor: aType

	| prefix |
	prefix := MarkdownCodeHighlighter smalltalkTypePrefix.
	(aType beginsWith: prefix) ifFalse: [ ^#() ].
	^(SHTextStylerST80 attributesFor: (aType allButFirst: prefix size) asSymbol) ifNil: [ #() ]! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
styleTable

	^styleTable ifNil: [ styleTable := self defaultStyleTable ]! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
resetStyleTable
	"Needed after changing the style table definition or the default font.
	MarkdownTextStyler resetStyleTable
	"

	styleTable := nil! !

!MarkdownTextStyler class methodsFor: 'class initialization' stamp: 'AP 11/Oct/2026 12:00:00'!
initialize
	"Styles are recomputed when the package is installed again, in case they changed"

	self resetStyleTable! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
defaultStyleTable
	"Answer a Dictionary from MarkdownRange types to the TextAttributes used to style them.
	Types not included here (like #link) are not styled"

	^Dictionary new
		at: #heading1 put: (self headingAttributesScaledBy: 2);
		at: #heading2 put: (self headingAttributesScaledBy: 1.6);
		at: #heading3 put: (self headingAttributesScaledBy: 1.3);
		at: #heading4 put: (self headingAttributesScaledBy: 1.15);
		at: #heading5 put: (self headingAttributesScaledBy: 1);
		at: #heading6 put: (self headingAttributesScaledBy: 1);
		at: #markup put: self markupAttributes;
		at: #escape put: self markupAttributes;
		at: #setextUnderline put: self markupAttributes;
		at: #bold put: { ShoutTextEmphasis bold };
		at: #italic put: { ShoutTextEmphasis italic };
		at: #boldItalic put: { ShoutTextEmphasis bold. ShoutTextEmphasis italic };
		at: #strikethrough put: { ShoutTextEmphasis struckThrough };
		at: #inlineCode put: self codeAttributes;
		at: #codeBlock put: self codeAttributes;
		at: #codeFence put: self codeAttributes;
		at: #blockquote put: { ShoutTextColor color: (Color r: 0.25 g: 0.45 b: 0.25). ShoutTextEmphasis italic };
		at: #listMarker put: self listMarkerAttributes;
		at: #uncheckedTask put: self listMarkerAttributes;
		at: #checkedTask put: self listMarkerAttributes;
		at: #completedTaskText put: { ShoutTextColor color: self markupColor. ShoutTextEmphasis struckThrough };
		at: #linkText put: self linkAttributes;
		at: #linkUrl put: self markupAttributes;
		at: #horizontalRule put: self markupAttributes;
		at: #tableDelimiter put: self markupAttributes;
		at: #tableSeparator put: self markupAttributes;
		at: #tableHeader put: { ShoutTextEmphasis bold };
		at: #table put: self monospacedFontAttributes;
		at: #autolink put: self linkAttributes;
		at: #quoteMarker put: self markupAttributes;
		at: #quoteContinuation put: self markupAttributes;
		at: #hardBreak put: { ShoutTextColor color: self markupColor. ShoutTextBackgroundColor color: (Color r: 0.9 g: 0.9 b: 0.9) };
		at: #linkReference put: self markupAttributes;
		at: #linkDefinition put: self markupAttributes;
		at: #footnoteReference put: { ShoutTextColor color: self linkColor. ShoutTextEmphasis superscript };
		at: #footnoteMarker put: { ShoutTextColor color: self linkColor. ShoutTextEmphasis bold };
		at: #htmlTag put: self markupAttributes;
		at: #htmlLineBreak put: self markupAttributes;
		at: #htmlComment put: { ShoutTextColor color: self markupColor. ShoutTextEmphasis italic };
		at: #htmlCommentBlock put: { ShoutTextColor color: self markupColor. ShoutTextEmphasis italic };
		at: #underline put: { ShoutTextEmphasis underlined };
		at: #highlight put: { ShoutTextBackgroundColor color: (Color r: 1.0 g: 0.95 b: 0.5) };
		at: #superscript put: { ShoutTextEmphasis superscript };
		at: #subscript put: { ShoutTextEmphasis subscript };
		at: #emoji put: { ShoutTextColor color: (Color r: 0.8 g: 0.45 b: 0.0) };
		at: #math put: self mathAttributes;
		at: #mathBlock put: self mathAttributes;
		at: #mathMarkup put: self markupAttributes;
		at: #mathFence put: self markupAttributes;
		at: #codeKeyword put: { ShoutTextColor color: (Color r: 0.5 g: 0.0 b: 0.5). ShoutTextEmphasis bold };
		at: #codeString put: { ShoutTextColor color: (Color r: 0.1 g: 0.5 b: 0.1) };
		at: #codeNumber put: { ShoutTextColor color: (Color r: 0.1 g: 0.3 b: 0.75) };
		at: #codeComment put: { ShoutTextColor color: (Color r: 0.5 g: 0.5 b: 0.5). ShoutTextEmphasis italic };
		yourself! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
linkColor

	^Color r: 0.0 g: 0.3 b: 0.8! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
linkAttributes

	^{ ShoutTextColor color: self linkColor. ShoutTextEmphasis underlined }! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
mathAttributes

	^{ ShoutTextColor color: (Color r: 0.0 g: 0.4 b: 0.45). ShoutTextEmphasis italic }! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
headingAttributesScaledBy: aFactor

	^{
		ShoutTextEmphasis bold.
		ShoutTextColor color: (Color r: 0.1 g: 0.2 b: 0.55).
		MarkdownFontSize pointSize: (FontFamily defaultPointSize * aFactor) rounded }! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
markupAttributes

	^{ ShoutTextColor color: self markupColor }! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
listMarkerAttributes

	^{ ShoutTextColor color: (Color r: 0.75 g: 0.35 b: 0.0). ShoutTextEmphasis bold }! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
codeAttributes

	^{
		ShoutTextColor color: (Color r: 0.6 g: 0.1 b: 0.1).
		ShoutTextBackgroundColor color: (Color r: 0.92 g: 0.92 b: 0.92) },
	self monospacedFontAttributes! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
monospacedFontAttributes
	"Use a monospaced font for code and tables. If none is loaded, load the one that comes with Cuis"

	^(self monospacedFamilyName ifNil: [
		self loadMonospacedFont.
		self monospacedFamilyName ])
			ifNil: [ #() ]
			ifNotNil: [ :familyName | { MarkdownFontFamily familyName: familyName } ]! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
monospacedFamilyName
	"Answer the name of a loaded monospaced font, or nil if there is none"

	^FontFamily familyNames
		detect: [ :each | each includesSubString: 'Mono' ]
		ifNone: [ nil ]! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
loadMonospacedFont
	"Cuis comes with JetBrains Mono in its TrueTypeFonts directory, but it is not loaded by default"

	| directory |
	directory := DirectoryEntry trueTypeFontsDirectory / 'JetBrainsMono'.
	directory exists ifTrue: [
		[ TrueTypeFontFamily readAllTrueTypeFontsIn: directory ] on: Error do: [ :error | error return: nil ]]! !

!MarkdownTextStyler class methodsFor: 'style table' stamp: 'AP 11/Oct/2026 12:00:00'!
markupColor

	^Color r: 0.55 g: 0.55 b: 0.55! !


!MarkdownFontSize methodsFor: 'testing' stamp: 'AP 11/Oct/2026 12:00:00'!
isForShout
	"True if to be removed from code before styling"

	^true! !


!MarkdownFontFamily methodsFor: 'testing' stamp: 'AP 11/Oct/2026 12:00:00'!
isForShout
	"True if to be removed from code before styling"

	^true! !


!MarkdownRenderer methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
render: aString relativeTo: aDirectoryEntryOrNil
	"Answer a Text with the contents of aString rendered. Relative links and images are relative to aDirectoryEntryOrNil"

	baseDirectory := aDirectoryEntryOrNil.
	source := aString.
	parser := MarkdownParser new.
	ranges := parser parse: aString.
	tables := MarkdownTable tablesIn: aString ranges: ranges.
	footnoteNumbers := self numberFootnotes.
	text := aString asUnicodeString asText optimizedForMutationSpeed.
	self
		addStyles;
		addTableStyles;
		addLinkActions;
		applyReplacements.
	^text! !

!MarkdownRenderer methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
addStyles

	ranges do: [ :range |
		(MarkdownTextStyler attributesFor: range type) do: [ :attribute |
			text addAttribute: attribute from: range start to: range end ]]! !

!MarkdownRenderer methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
addTableStyles
	"Tables are shown with a monospaced font, so their columns are aligned"

	tables do: [ :table |
		table rowsDo: [ :row |
			(MarkdownTextStyler attributesFor: #table) do: [ :attribute |
				text addAttribute: attribute from: row start to: row end ]]]! !

!MarkdownRenderer methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
addLinkActions
	"The text of links, and autolinks, can be clicked"

	ranges do: [ :each |
		each type = #link ifTrue: [
			(parser rangeOfType: #linkText in: each) ifNotNil: [ :linkText |
				self addLinkAction: (parser urlOfLink: each) from: linkText start to: linkText end ]].
		each type = #autolink ifTrue: [
			self addLinkAction: (parser urlOfLink: each) from: each start to: each end ]]! !

!MarkdownRenderer methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
addLinkAction: aUrl from: start to: end

	aUrl ifNil: [ ^self ].
	text
		addAttribute: (MarkdownLinkAction url: aUrl relativeTo: baseDirectory)
		from: start
		to: end! !

!MarkdownRenderer methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
applyReplacements
	"Images that can be shown replace all the text of the image, including the replacements inside it. Other overlapping replacements are ignored"

	| replacements images |
	replacements := (ranges
		collect: [ :range | self replacementFor: range ]
		thenSelect: [ :each | each notNil ]) asOrderedCollection.
	replacements addAll: (self tableReplacementsHiding: replacements copy).
	images := self imageReplacements.
	replacements := replacements reject: [ :replacement |
		images anySatisfy: [ :image | image key includes: replacement key first ]].
	replacements addAll: images.
	text := self textWith: (self withoutOverlaps: replacements)! !

!MarkdownRenderer methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
withoutOverlaps: replacements
	"Answer the replacements sorted by their position. When two of them overlap, only the last one is kept"

	| accepted firstReplacedIndex |
	accepted := OrderedCollection new.
	firstReplacedIndex := text size + 1.
	(replacements asSortedCollection: [ :one :another | one key first >= another key first ]) do: [ :replacement |
		replacement key last < firstReplacedIndex ifTrue: [
			accepted addFirst: replacement.
			firstReplacedIndex := replacement key first ]].
	^accepted! !

!MarkdownRenderer methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
textWith: sortedReplacements
	"Answer a copy of text with the replacements done. It is built in a single pass, as replacing one at a time copies the whole text each time"

	| attributes string index |
	attributes := OrderedCollection new.
	index := 1.
	string := String streamContents: [ :stream |
		sortedReplacements do: [ :replacement | | replacementText |
			index to: replacement key first - 1 do: [ :each |
				stream nextPut: (text at: each).
				attributes add: (text attributesAt: each) ].
			replacementText := self textOf: replacement.
			1 to: replacementText size do: [ :each |
				stream nextPut: (replacementText at: each).
				attributes add: (replacementText attributesAt: each) ].
			index := replacement key last + 1 ].
		index to: text size do: [ :each |
			stream nextPut: (text at: each).
			attributes add: (text attributesAt: each) ]].
	^Text string: string runs: (RunNotArray withAll: attributes)! !

!MarkdownRenderer methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
textOf: aReplacement
	"A String replacement keeps the styles of the replaced text. A Text replacement has its own styles"

	(aReplacement value is: #Text) ifTrue: [ ^aReplacement value ].
	aReplacement value isEmpty ifTrue: [ ^Text new ].
	^Text string: aReplacement value attributes: (text attributesAt: (aReplacement key first min: text size))! !

!MarkdownRenderer methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
tableReplacementsHiding: markupReplacements
	"Borders and padding of tables, that align their columns. Their width depends on the markup hidden in their cells"

	| attributes |
	attributes := (MarkdownTextStyler attributesFor: #tableDelimiter), (MarkdownTextStyler attributesFor: #table).
	^tables inject: OrderedCollection new into: [ :replacements :table |
		(table replacementsHiding: markupReplacements) do: [ :each |
			replacements add: each key -> (Text string: each value attributes: attributes) ].
		replacements ]! !

!MarkdownRenderer methodsFor: 'images' stamp: 'AP 11/Oct/2026 12:00:00'!
imageReplacements
	"Images in local files are shown in the text. HTML images (<img src=...>) that can not be shown are replaced by their alternative text"

	^(ranges select: [ :each | each type = #image ]) inject: OrderedCollection new into: [ :replacements :image |
		(self formOfImage: image)
			ifNotNil: [ :form | replacements add: (image start to: image end) -> (Text withForm: form) ]
			ifNil: [
				(self isHtmlImage: image) ifTrue: [
					replacements add: (image start to: image end) -> ((self htmlAttribute: 'alt' of: image) ifNil: [ '' ]) ]].
		replacements ]! !

!MarkdownRenderer methodsFor: 'images' stamp: 'AP 11/Oct/2026 12:00:00'!
formOfImage: anImageRange
	"Answer the Form of the image, or nil if it can not be read. Web images can not be downloaded"

	| url action |
	url := (self isHtmlImage: anImageRange)
		ifTrue: [ self htmlAttribute: 'src' of: anImageRange ]
		ifFalse: [ (parser rangeOfType: #link in: anImageRange) ifNotNil: [ :link | parser urlOfLink: link ]].
	url ifNil: [ ^nil ].
	action := MarkdownLinkAction url: url relativeTo: baseDirectory.
	action isWebLink ifTrue: [ ^nil ].
	^self class formAt: action fileEntry! !

!MarkdownRenderer methodsFor: 'images' stamp: 'AP 11/Oct/2026 12:00:00'!
isHtmlImage: anImageRange

	^(source at: anImageRange start) = $<! !

!MarkdownRenderer methodsFor: 'images' stamp: 'AP 11/Oct/2026 12:00:00'!
htmlAttribute: aName of: aTagRange
	"The value of an attribute of an HTML tag, as in <img src='logo.png'>, or nil if it has none"

	| tag nameIndex valueStart quote valueEnd |
	tag := source copyFrom: aTagRange start to: aTagRange end.
	nameIndex := tag asLowercase findString: aName, '=' startingAt: 1.
	nameIndex = 0 ifTrue: [ ^nil ].
	valueStart := nameIndex + aName size + 1.
	valueStart > tag size ifTrue: [ ^nil ].
	quote := tag at: valueStart.
	('"''' includes: quote)
		ifTrue: [
			valueStart := valueStart + 1.
			valueEnd := tag indexOf: quote startingAt: valueStart ifAbsent: [ tag size ] ]
		ifFalse: [
			valueEnd := valueStart.
			[ valueEnd <= tag size and: [ ((tag at: valueEnd) isSeparator or: [ '/>' includes: (tag at: valueEnd) ]) not ]]
				whileTrue: [ valueEnd := valueEnd + 1 ]].
	^tag copyFrom: valueStart to: valueEnd - 1! !

!MarkdownRenderer methodsFor: 'footnotes' stamp: 'AP 11/Oct/2026 12:00:00'!
numberFootnotes
	"Footnotes are numbered in the order they appear, whatever their labels are"

	| numbers |
	numbers := Dictionary new.
	((ranges select: [ :each | #(#footnoteReference #footnoteMarker) includes: each type ])
		asSortedCollection: [ :one :another | one start <= another start ])
			do: [ :each | numbers at: (self footnoteLabelOf: each) ifAbsentPut: [ numbers size + 1 ]].
	^numbers! !

!MarkdownRenderer methodsFor: 'footnotes' stamp: 'AP 11/Oct/2026 12:00:00'!
footnoteLabelOf: aRange
	"As 1 in [^1] or [^1]:"

	^source
		copyFrom: aRange start + 2
		to: aRange end - (aRange type = #footnoteMarker ifTrue: [ 2 ] ifFalse: [ 1 ])! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replacementFor: aRange
	"Answer an Association from the Interval to replace to its replacement String or Text, or nil if aRange is shown as is"

	^self perform: (self class replacementSelectors at: aRange type ifAbsent: [ ^nil ]) with: aRange! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
hide: aRange

	^(aRange start to: aRange end) -> ''! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
hideWithPreviousNewLine: aRange
	"For lines that only change the meaning of the previous one, like === under a heading"

	^(aRange start - 1 to: aRange end) -> ''! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
hideLine: aRange
	"Hide the whole line, including a new line character"

	^aRange end < text size
		ifTrue: [ (aRange start to: aRange end + 1) -> '' ]
		ifFalse: [ ((aRange start - 1 max: 1) to: aRange end) -> '' ]! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replaceWithSpace: aRange
	"The new line between two lines of a paragraph"

	^(aRange start to: aRange end) -> ' '! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replaceWithNewLine: aRange

	^(aRange start to: aRange end) -> String newLineString! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replaceListMarker: aRange
	"Unordered list markers are shown as bullets, that change with the nesting level. Nested items are indented more"

	| indentationStart level marker |
	indentationStart := self indentationStartBefore: aRange start.
	level := (self indentationWidthFrom: indentationStart to: aRange start - 1) // 2.
	marker := ('-*+' includes: (source at: aRange start))
		ifTrue: [ self class bullets at: level \\ self class bullets size + 1 ]
		ifFalse: [ source copyFrom: aRange start to: aRange end ].
	^(indentationStart to: aRange end) -> ((String new: level * 4 withAll: Character space), marker)! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replaceWithUncheckedBox: aRange

	^(aRange start to: aRange end) -> '☐'! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replaceWithCheckedBox: aRange

	^(aRange start to: aRange end) -> '☑'! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replaceWithHorizontalLine: aRange

	^(aRange start to: aRange end) -> '──────────────────────────────'! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replaceWithQuoteBar: aRange
	"Each > of a quote is shown as a vertical bar"

	^(aRange start to: aRange end) -> '┃ '! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replaceWithEmoji: aRange

	^(aRange start to: aRange end) -> (MarkdownParser emojis at: (source copyFrom: aRange start + 1 to: aRange end - 1))! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replaceWithMath: aRange
	"Math is shown with symbols, superscripts and subscripts, keeping its style"

	| math |
	math := MarkdownMath textFor: (source copyFrom: aRange start to: aRange end).
	(text attributesAt: aRange start) do: [ :each | math addAttribute: each ].
	^(aRange start to: aRange end) -> math! !

!MarkdownRenderer methodsFor: 'replacements' stamp: 'AP 11/Oct/2026 12:00:00'!
replaceWithFootnoteNumber: aRange
	"Footnote references are shown as superscript numbers. Footnote definitions start with their number"

	| number |
	number := (footnoteNumbers at: (self footnoteLabelOf: aRange)) printString.
	^(aRange start to: aRange end) -> (aRange type = #footnoteReference
		ifTrue: [ Text string: number attributes: (MarkdownTextStyler attributesFor: #footnoteReference) ]
		ifFalse: [ Text string: number, '.' attributes: (MarkdownTextStyler attributesFor: #footnoteMarker) ])! !

!MarkdownRenderer methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
indentationStartBefore: anIndex
	"The first blank before anIndex, in the line. Inside quotes, the space after > is part of the quote marker"

	| indentationStart |
	indentationStart := anIndex.
	[ indentationStart > 1 and: [ { Character space. Character tab } includes: (source at: indentationStart - 1) ]] whileTrue: [
		indentationStart := indentationStart - 1 ].
	(indentationStart > 1 and: [ indentationStart < anIndex and: [ (source at: indentationStart - 1) = $> ]])
		ifTrue: [ indentationStart := indentationStart + 1 ].
	^indentationStart! !

!MarkdownRenderer methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
indentationWidthFrom: start to: end

	^(start to: end) inject: 0 into: [ :width :index |
		width + ((source at: index) = Character tab ifTrue: [ 4 ] ifFalse: [ 1 ]) ]! !

!MarkdownRenderer class methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
render: aString

	^self render: aString relativeTo: nil! !

!MarkdownRenderer class methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
render: aString relativeTo: aDirectoryEntryOrNil

	^self new render: aString relativeTo: aDirectoryEntryOrNil! !

!MarkdownRenderer class methodsFor: 'images' stamp: 'AP 11/Oct/2026 12:00:00'!
formAt: aFileEntry
	"Answer the image in aFileEntry, scaled to fit the preview, or nil if it can not be read.
	Images are cached, as the preview is rendered each time the text changes"

	| key |
	aFileEntry exists ifFalse: [ ^nil ].
	key := aFileEntry pathName, ' ', aFileEntry modificationTime printString.
	imageCache ifNil: [ imageCache := Dictionary new ].
	^imageCache at: key ifAbsent: [
		"Images that can not be read are not cached, so they are read again when they can"
		(self readFormFrom: aFileEntry) ifNotNil: [ :form | imageCache at: key put: form ]]! !

!MarkdownRenderer class methodsFor: 'images' stamp: 'AP 11/Oct/2026 12:00:00'!
readFormFrom: aFileEntry

	| form |
	self loadImageFormats.
	form := [ ImageReadWriter formFromFileNamed: aFileEntry pathName ] on: Error do: [ :error | error return: nil ].
	form ifNil: [ ^nil ].
	form width > self maxImageWidth ifTrue: [ form := form magnifyBy: self maxImageWidth / form width asFloat ].
	^form! !

!MarkdownRenderer class methodsFor: 'images' stamp: 'AP 11/Oct/2026 12:00:00'!
loadImageFormats
	"Cuis reads BMP and JPEG files. PNG and GIF files are read by an optional package, that comes with Cuis"

	(Smalltalk includesKey: #PNGReadWriter) ifTrue: [ ^self ].
	[ Feature require: 'Graphics-Files-Additional' ] on: Error do: [ :error | error return: nil ]! !

!MarkdownRenderer class methodsFor: 'images' stamp: 'AP 11/Oct/2026 12:00:00'!
resetImageCache
	"MarkdownRenderer resetImageCache"

	imageCache := nil! !

!MarkdownRenderer class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
maxImageWidth

	^500! !

!MarkdownRenderer class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
bullets
	"Bullets of unordered lists, for each nesting level"

	^#('•' '◦' '▪')! !

!MarkdownRenderer class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
replacementSelectors
	"Range types that are not shown as they are written, and the message that answers their replacement.
	Tables are replaced by MarkdownTable, as their borders depend on all their cells. Images are replaced by #imageReplacements"

	^`Dictionary new
		at: #markup put: #hide:;
		at: #escape put: #hide:;
		at: #linkUrl put: #hide:;
		at: #linkReference put: #hide:;
		at: #linkDefinition put: #hideLine:;
		at: #setextUnderline put: #hideWithPreviousNewLine:;
		at: #codeFence put: #hideLine:;
		at: #codeIndent put: #hide:;
		at: #softBreak put: #replaceWithSpace:;
		at: #hardBreak put: #hide:;
		at: #listMarker put: #replaceListMarker:;
		at: #uncheckedTask put: #replaceWithUncheckedBox:;
		at: #checkedTask put: #replaceWithCheckedBox:;
		at: #horizontalRule put: #replaceWithHorizontalLine:;
		at: #quoteMarker put: #replaceWithQuoteBar:;
		at: #quoteContinuation put: #hide:;
		at: #footnoteReference put: #replaceWithFootnoteNumber:;
		at: #footnoteMarker put: #replaceWithFootnoteNumber:;
		at: #htmlTag put: #hide:;
		at: #htmlComment put: #hide:;
		at: #htmlCommentBlock put: #hideLine:;
		at: #htmlLineBreak put: #replaceWithNewLine:;
		at: #emoji put: #replaceWithEmoji:;
		at: #math put: #replaceWithMath:;
		at: #mathBlock put: #replaceWithMath:;
		at: #mathMarkup put: #hide:;
		at: #mathFence put: #hideLine:;
		yourself`! !


!MarkdownTable methodsFor: 'initialization' stamp: 'AP 11/Oct/2026 12:00:00'!
initializeSource: aString

	source := aString.
	rows := OrderedCollection new! !

!MarkdownTable methodsFor: 'adding' stamp: 'AP 11/Oct/2026 12:00:00'!
addRowFrom: start to: end delimiters: delimiterIndices
	"The cells are between the | delimiters. The last one may not be closed by a |"

	| cells |
	cells := OrderedCollection new.
	delimiterIndices withIndexDo: [ :delimiter :index | | cell |
		cell := self trimmedFrom: delimiter + 1 to: (index < delimiterIndices size
			ifTrue: [ (delimiterIndices at: index + 1) - 1 ]
			ifFalse: [ end ]).
		(index = delimiterIndices size and: [ cell isEmpty ]) ifFalse: [ cells add: cell ]].
	rows add: (MarkdownTableRow from: start to: end cells: cells asArray)! !

!MarkdownTable methodsFor: 'adding' stamp: 'AP 11/Oct/2026 12:00:00'!
addSeparatorFrom: start to: end
	"The first separator defines the alignment of each column: |:---| to the left, |:---:| center and |---:| to the right"

	alignments ifNil: [ alignments := self alignmentsFrom: start to: end ].
	rows add: (MarkdownTableRow separatorFrom: start to: end)! !

!MarkdownTable methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
firstRow

	^rows first! !

!MarkdownTable methodsFor: 'testing' stamp: 'AP 11/Oct/2026 12:00:00'!
hasHeader
	"The rows before a separator are the header"

	^rows first isSeparator not and: [ rows anySatisfy: [ :each | each isSeparator ]]! !

!MarkdownTable methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
rowsDo: aBlock

	rows do: aBlock! !

!MarkdownTable methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
alignmentOfColumn: aColumn

	alignments ifNil: [ ^#left ].
	^alignments at: aColumn ifAbsent: [ #left ]! !

!MarkdownTable methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
replacementsHiding: markupReplacements
	"Answer the replacements (Associations from an Interval to a String) that draw me with borders and aligned columns.
	markupReplacements are the ones that hide markup, so cells are shown narrower than they are written"

	| replacements |
	self computeWidthsHiding: markupReplacements.
	replacements := OrderedCollection new.
	rows do: [ :row |
		row isSeparator
			ifTrue: [ replacements add: (row start to: row end) -> (self separatorFor: row) ]
			ifFalse: [ replacements addAll: (self replacementsForRow: row) ]].
	^replacements! !

!MarkdownTable methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
replacementsForRow: aRow
	"Replace the text between cells (blanks and |) with a vertical line and the padding that aligns the cells"

	| cells replacements previousEnd |
	cells := aRow cells.
	replacements := OrderedCollection new.
	previousEnd := aRow start - 1.
	1 to: cells size + 1 do: [ :index | | nextStart |
		nextStart := index <= cells size
			ifTrue: [ (cells at: index) first ]
			ifFalse: [ aRow end + 1 ].
		replacements add: (previousEnd + 1 to: nextStart - 1) -> (self gapBeforeCell: index of: aRow).
		index <= cells size ifTrue: [ previousEnd := (cells at: index) first + (cells at: index) size - 1 ]].
	^replacements! !

!MarkdownTable methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
gapBeforeCell: anIndex of: aRow
	"The text shown before the cell at anIndex: the padding of the previous cell, a vertical line and the padding of the cell.
	After the last cell, it also has the empty cells the row is missing.
	The first line also draws the top border, and the last one the bottom border"

	| cells gap |
	cells := aRow cells.
	gap := ''.
	(anIndex = 1 and: [ aRow == rows first ]) ifTrue: [ gap := self topBorder, String newLineString ].
	gap := anIndex = 1
		ifTrue: [ gap, '│' ]
		ifFalse: [ gap, (self rightPaddingOf: (cells at: anIndex - 1) inColumn: anIndex - 1), ' │' ].
	anIndex <= cells size ifTrue: [
		^gap, ' ', (self leftPaddingOf: (cells at: anIndex) inColumn: anIndex) ].
	cells size + 1 to: columnWidths size do: [ :column |
		gap := gap, ' ', (self spaces: (columnWidths at: column)), ' │' ].
	aRow == rows last ifTrue: [ gap := gap, String newLineString, self bottomBorder ].
	^gap! !

!MarkdownTable methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
separatorFor: aRow

	aRow == rows first ifTrue: [ ^self topBorder ].
	aRow == rows last ifTrue: [ ^self bottomBorder ].
	^self borderLeft: '├' middle: '┼' right: '┤'! !

!MarkdownTable methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
topBorder

	^self borderLeft: '┌' middle: '┬' right: '┐'! !

!MarkdownTable methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
bottomBorder

	^self borderLeft: '└' middle: '┴' right: '┘'! !

!MarkdownTable methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
borderLeft: left middle: middle right: right
	"A horizontal line as wide as the table. Each column has a space at each side"

	| border |
	border := left.
	columnWidths withIndexDo: [ :width :column |
		column > 1 ifTrue: [ border := border, middle ].
		border := border, (UnicodeString new: width + 2 withAll: $─) ].
	^border, right! !

!MarkdownTable methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
leftPaddingOf: aCell inColumn: aColumn

	| padding |
	padding := (columnWidths at: aColumn) - (cellWidths at: aCell).
	(self alignmentOfColumn: aColumn) = #right ifTrue: [ ^self spaces: padding ].
	(self alignmentOfColumn: aColumn) = #center ifTrue: [ ^self spaces: padding // 2 ].
	^''! !

!MarkdownTable methodsFor: 'rendering' stamp: 'AP 11/Oct/2026 12:00:00'!
rightPaddingOf: aCell inColumn: aColumn

	^self spaces: (columnWidths at: aColumn) - (cellWidths at: aCell) - (self leftPaddingOf: aCell inColumn: aColumn) size! !

!MarkdownTable methodsFor: 'widths' stamp: 'AP 11/Oct/2026 12:00:00'!
computeWidthsHiding: markupReplacements
	"The width of a cell is how many characters it shows. A column is as wide as its widest cell"

	| columns |
	cellWidths := IdentityDictionary new.
	columns := alignments ifNil: [ 0 ] ifNotNil: [ alignments size ].
	rows do: [ :row |
		columns := columns max: row cells size.
		row cells do: [ :cell |
			cellWidths at: cell put: (self widthOf: cell hiding: markupReplacements) ]].
	columnWidths := (1 to: columns) collect: [ :column |
		rows
			inject: 1
			into: [ :width :row |
				row cells size >= column
					ifTrue: [ width max: (cellWidths at: (row cells at: column)) ]
					ifFalse: [ width ]]]! !

!MarkdownTable methodsFor: 'widths' stamp: 'AP 11/Oct/2026 12:00:00'!
widthOf: aCell hiding: markupReplacements

	^markupReplacements inject: aCell size into: [ :width :each |
		(each key first >= aCell first and: [ each key last < (aCell first + aCell size) ])
			ifTrue: [ width - each key size + each value size ]
			ifFalse: [ width ]]! !

!MarkdownTable methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
trimmedFrom: start to: end
	"Answer the interval from start to end without the blanks around it. If it is all blanks, answer an empty interval at end + 1"

	| first last |
	first := start.
	[ first <= end and: [ (source at: first) isSeparator ]] whileTrue: [ first := first + 1 ].
	first > end ifTrue: [ ^end + 1 to: end ].
	last := end.
	[ (source at: last) isSeparator ] whileTrue: [ last := last - 1 ].
	^first to: last! !

!MarkdownTable methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
alignmentsFrom: start to: end

	^((source copyFrom: start to: end) findTokens: '|') collect: [ :each | | cell |
		cell := each withBlanksTrimmed.
		(cell endsWith: ':')
			ifTrue: [ (cell beginsWith: ':') ifTrue: [ #center ] ifFalse: [ #right ]]
			ifFalse: [ #left ]]! !

!MarkdownTable methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
spaces: aSize

	^String new: aSize withAll: Character space! !

!MarkdownTable class methodsFor: 'instance creation' stamp: 'AP 11/Oct/2026 12:00:00'!
source: aString

	^self new initializeSource: aString! !

!MarkdownTable class methodsFor: 'instance creation' stamp: 'AP 11/Oct/2026 12:00:00'!
tablesIn: aString ranges: markdownRanges
	"Answer the tables of aString: groups of consecutive lines that are table rows or separators"

	| delimiters nextDelimiter separatorStarts tables table |
	delimiters := ((markdownRanges select: [ :each | each type = #tableDelimiter ]) collect: [ :each | each start ]) asSortedCollection asArray.
	separatorStarts := ((markdownRanges select: [ :each | each type = #tableSeparator ]) collect: [ :each | each start ]) asSet.
	nextDelimiter := 1.
	tables := OrderedCollection new.
	aString lineIndicesDo: [ :start :end :endIncludingNewLine | | lineDelimiters |
		lineDelimiters := OrderedCollection new.
		[ nextDelimiter <= delimiters size and: [ (delimiters at: nextDelimiter) <= end ]] whileTrue: [
			lineDelimiters add: (delimiters at: nextDelimiter).
			nextDelimiter := nextDelimiter + 1 ].
		(lineDelimiters isEmpty and: [ (separatorStarts includes: start) not ])
			ifTrue: [ table := nil ]
			ifFalse: [
				table ifNil: [ table := tables add: (self source: aString) ].
				(separatorStarts includes: start)
					ifTrue: [ table addSeparatorFrom: start to: end ]
					ifFalse: [ table addRowFrom: start to: end delimiters: lineDelimiters ]]].
	^tables! !


!MarkdownTableRow methodsFor: 'initialization' stamp: 'AP 11/Oct/2026 12:00:00'!
initializeFrom: aStart to: anEnd cells: intervals

	start := aStart.
	end := anEnd.
	cells := intervals! !

!MarkdownTableRow methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
start

	^start! !

!MarkdownTableRow methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
end

	^end! !

!MarkdownTableRow methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
cells

	^cells ifNil: [ #() ]! !

!MarkdownTableRow methodsFor: 'testing' stamp: 'AP 11/Oct/2026 12:00:00'!
isSeparator

	^cells isNil! !

!MarkdownTableRow class methodsFor: 'instance creation' stamp: 'AP 11/Oct/2026 12:00:00'!
from: aStart to: anEnd cells: intervals

	^self new initializeFrom: aStart to: anEnd cells: intervals! !

!MarkdownTableRow class methodsFor: 'instance creation' stamp: 'AP 11/Oct/2026 12:00:00'!
separatorFrom: aStart to: anEnd

	^self new initializeFrom: aStart to: anEnd cells: nil! !


!MarkdownLinkAction methodsFor: 'initialization' stamp: 'AP 11/Oct/2026 12:00:00'!
initializeUrl: aString relativeTo: aDirectoryEntryOrNil

	url := aString.
	baseDirectory := aDirectoryEntryOrNil! !

!MarkdownLinkAction methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
url

	^url! !

!MarkdownLinkAction methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
fileEntry
	"The file the url refers to. Relative urls are relative to my base directory"

	url isAbsolutePathName ifTrue: [ ^url asFileEntry ].
	baseDirectory ifNotNil: [ ^FileEntry withRelativePathName: url to: baseDirectory ].
	self class directoriesForRelativeUrls do: [ :directory | | candidate |
		candidate := FileEntry withRelativePathName: url to: directory.
		candidate exists ifTrue: [ ^candidate ]].
	^url asFileEntry! !

!MarkdownLinkAction class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
directoriesForRelativeUrls
	"Where relative urls of a text that is not in a file are looked for: the current directory, and the directory of Cuis (as in the tutorial)"

	^{ DirectoryEntry currentDirectory. DirectoryEntry cuisBaseDirectory }! !

!MarkdownLinkAction methodsFor: 'testing' stamp: 'AP 11/Oct/2026 12:00:00'!
isWebLink

	^#('http://' 'https://' 'mailto:' 'www.') anySatisfy: [ :prefix | url beginsWith: prefix ]! !

!MarkdownLinkAction methodsFor: 'testing' stamp: 'AP 11/Oct/2026 12:00:00'!
isAnchor
	"A link to a heading of the same text, as in [ver](#tablas)"

	^url beginsWith: '#'! !

!MarkdownLinkAction methodsFor: 'testing' stamp: 'AP 11/Oct/2026 12:00:00'!
isLocalMarkdownFile

	^self isWebLink not and: [
		#('.md' '.markdown') anySatisfy: [ :suffix | url endsWith: suffix ]]! !

!MarkdownLinkAction methodsFor: 'opening' stamp: 'AP 11/Oct/2026 12:00:00'!
open

	self isLocalMarkdownFile ifTrue: [ ^self openMarkdownFile ].
	Clipboard storeObject: url.
	self inform: 'Cuis can not open a web browser. The link was copied to the clipboard:', String newLineString, url! !

!MarkdownLinkAction methodsFor: 'opening' stamp: 'AP 11/Oct/2026 12:00:00'!
openMarkdownFile

	self fileEntry exists ifFalse: [ ^self inform: 'File not found: ', self fileEntry pathName ].
	MarkdownTextModel openOn: self fileEntry! !

!MarkdownLinkAction methodsFor: 'opening' stamp: 'AP 11/Oct/2026 12:00:00'!
goToAnchorIn: aTextEditor
	"Select the heading I refer to in the text of aTextEditor, scrolling to show it"

	| heading |
	heading := self class headingWithAnchor: (url allButFirst: 1) in: aTextEditor morph model actualContents.
	heading ifNil: [ ^self inform: 'There is no heading for the link ', url ].
	aTextEditor selectFrom: heading first to: heading last.
	aTextEditor morph scrollSelectionIntoView! !

!MarkdownLinkAction methodsFor: 'text action' stamp: 'AP 11/Oct/2026 12:00:00'!
actOnClickFor: anObject

	self open.
	^true! !

!MarkdownLinkAction methodsFor: 'text action' stamp: 'AP 11/Oct/2026 12:00:00'!
actOnClickFor: model in: aTextComposition at: clickPoint editor: aTextEditor
	"Links to headings scroll the text that was clicked"

	self isAnchor ifFalse: [ ^self actOnClickFor: model ].
	self goToAnchorIn: aTextEditor.
	^true! !

!MarkdownLinkAction methodsFor: 'comparing' stamp: 'AP 11/Oct/2026 12:00:00'!
= anObject

	self == anObject ifTrue: [ ^true ].
	^self class = anObject class and: [ url = anObject url ]! !

!MarkdownLinkAction methodsFor: 'comparing' stamp: 'AP 11/Oct/2026 12:00:00'!
hash

	^url hash! !

!MarkdownLinkAction class methodsFor: 'instance creation' stamp: 'AP 11/Oct/2026 12:00:00'!
url: aString relativeTo: aDirectoryEntryOrNil

	^self new initializeUrl: aString relativeTo: aDirectoryEntryOrNil! !

!MarkdownLinkAction class methodsFor: 'anchors' stamp: 'AP 11/Oct/2026 12:00:00'!
headingWithAnchor: anAnchor in: aText
	"Answer the interval of the heading line of aText with anAnchor, or nil if there is none.
	Headings are the lines styled as headings, both in the editor (as '## Tablas') and in the preview (as 'Tablas')"

	| string |
	string := aText asPlainString.
	string lineIndicesDo: [ :start :end :endIncludingNewLine |
		(start <= end
			and: [ ((aText attributesAt: start) anySatisfy: [ :each | each isKindOf: MarkdownFontSize ])
			and: [ (MarkdownParser anchorFor: ((string copyFrom: start to: end) copyWithout: $#)) = anAnchor asLowercase ]])
				ifTrue: [ ^start to: end ]].
	^nil! !


!MarkdownTextModel methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
fileEntry: aFileEntry

	fileEntry := aFileEntry! !

!MarkdownTextModel methodsFor: 'accessing' stamp: 'AP 11/Oct/2026 12:00:00'!
baseDirectory
	"Relative links are relative to the directory of the edited file"

	^fileEntry ifNotNil: [ :file | file parent ]! !

!MarkdownTextModel methodsFor: 'saving' stamp: 'AP 11/Oct/2026 12:00:00'!
suggestedFileName
	"The name of my file. If I have none yet, a name made from my first heading, as in 'Mis notas.md'"

	| title |
	fileEntry ifNotNil: [ ^fileEntry name ].
	title := self firstHeadingText.
	^(title isEmpty ifTrue: [ 'Markdown' ] ifFalse: [ title ]), '.md'! !

!MarkdownTextModel methodsFor: 'saving' stamp: 'AP 11/Oct/2026 12:00:00'!
suggestedHtmlFileName
	"As 'Mis notas.html' for 'Mis notas.md'"

	| name |
	name := self suggestedFileName.
	(name endsWith: '.md') ifTrue: [ name := name copyFrom: 1 to: name size - 3 ].
	^name, '.html'! !

!MarkdownTextModel methodsFor: 'saving' stamp: 'AP 11/Oct/2026 12:00:00'!
htmlDocument

	^MarkdownHtmlExporter documentFor: self actualContents asPlainString relativeTo: self baseDirectory! !

!MarkdownTextModel methodsFor: 'saving' stamp: 'AP 11/Oct/2026 12:00:00'!
firstHeadingText
	"The text of my first heading, without markup nor characters that are not valid in file names. Empty if I have no headings"

	| contents |
	contents := self actualContents asPlainString.
	^(MarkdownParser rangesIn: contents)
		detect: [ :each | MarkdownParser headingTypes includes: each type ]
		ifFound: [ :heading |
			((MarkdownRenderer render: (contents copyFrom: heading start to: heading end)) asPlainString
				reject: [ :each | '\/:*?"<>|' includes: each ]) withBlanksTrimmed ]
		ifNone: [ '' ]! !

!MarkdownTextModel methodsFor: 'shout styling' stamp: 'AP 11/Oct/2026 12:00:00'!
stylesText
	"Markdown is always styled, even if Smalltalk syntax highlighting is turned off"

	^true! !

!MarkdownTextModel methodsFor: 'shout styling' stamp: 'AP 11/Oct/2026 12:00:00'!
aboutToStyleWith: anSHTextStyler
	"Contents changed, so the preview must change too"

	super aboutToStyleWith: anSHTextStyler.
	self updatePreview! !

!MarkdownTextModel methodsFor: 'user interface support' stamp: 'AP 11/Oct/2026 12:00:00'!
textStylerClass

	^MarkdownTextStyler! !

!MarkdownTextModel methodsFor: 'user interface support' stamp: 'AP 11/Oct/2026 12:00:00'!
editorClass

	^MarkdownTextEditor! !

!MarkdownTextModel methodsFor: 'preview' stamp: 'AP 11/Oct/2026 12:00:00'!
renderedContents

	^MarkdownRenderer render: self actualContents asPlainString relativeTo: self baseDirectory! !

!MarkdownTextModel methodsFor: 'preview' stamp: 'AP 11/Oct/2026 12:00:00'!
openPreview
	"Open a window with my contents rendered, that is updated as they change"

	previewModel := TextModel withText: self renderedContents.
	^previewModel openLabel: 'Preview'! !

!MarkdownTextModel methodsFor: 'preview' stamp: 'AP 11/Oct/2026 12:00:00'!
updatePreview

	previewModel ifNotNil: [ :preview | preview actualContents: self renderedContents ]! !

!MarkdownTextModel methodsFor: 'gui' stamp: 'AP 11/Oct/2026 12:00:00'!
openLabel: aString

	| window |
	window := super openLabel: aString.
	self changed: #actualContents.
	^window! !

!MarkdownTextModel methodsFor: 'tutorial' stamp: 'AP 11/Oct/2026 12:00:00'!
openTutorial

	^self class openTutorial! !

!MarkdownTextModel class methodsFor: 'instance creation' stamp: 'AP 11/Oct/2026 12:00:00'!
open
	"The first time, the editor is opened with the tutorial"

	self hasShownTutorial ifFalse: [ ^self openTutorial ].
	^self new openLabel: 'Markdown Editor'! !

!MarkdownTextModel class methodsFor: 'instance creation' stamp: 'AP 11/Oct/2026 12:00:00'!
openOn: aFileEntry
	"Open an editor on the contents of aFileEntry. Saving the window contents (from its menu) writes them back to the file.
	The first time, the tutorial is opened too"

	| model window |
	model := self withText: aFileEntry textContents.
	model fileEntry: aFileEntry.
	window := model openLabel: aFileEntry name.
	window setProperty: #lastFilenameUsedToSave toValue: aFileEntry pathName.
	self hasShownTutorial ifFalse: [ self openTutorial ].
	^window! !

!MarkdownTextModel class methodsFor: 'tutorial' stamp: 'AP 11/Oct/2026 12:00:00'!
openTutorial

	hasShownTutorial := true.
	^(self withText: self tutorialContents) openLabel: 'Markdown Tutorial'! !

!MarkdownTextModel class methodsFor: 'tutorial' stamp: 'AP 11/Oct/2026 12:00:00'!
hasShownTutorial

	^hasShownTutorial = true! !

!MarkdownTextModel class methodsFor: 'tutorial' stamp: 'AP 11/Oct/2026 12:00:00'!
hasShownTutorial: aBoolean

	hasShownTutorial := aBoolean! !

!MarkdownTextModel class methodsFor: 'tutorial' stamp: 'AP 11/Oct/2026 12:00:00'!
resetTutorial
	"Show the tutorial again the next time a Markdown Editor is opened.
	MarkdownTextModel resetTutorial
	"

	hasShownTutorial := false! !

!MarkdownTextModel class methodsFor: 'tutorial' stamp: 'AP 11/Oct/2026 12:00:00'!
tutorialContents
	"The tutorial shown the first time a Markdown Editor is opened. It is a Markdown document itself, so the user can try everything on it"

	^'# Bienvenido al Markdown Editor

Este es un **tutorial interactivo**. Es un documento Markdown común: podés editarlo, romperlo y probar todo acá mismo, sin miedo. Se muestra solo la primera vez, pero podés volver a abrirlo cuando quieras desde el menú del clic derecho (*Markdown Tutorial*).

Los atajos de teclado se usan con **Alt** en Windows y Linux, y con **Cmd** en Mac.

## 1. Escribir con formato

Mientras escribís, el editor resalta el Markdown. Los símbolos quedan en gris pero siempre se ven: lo que guardás es exactamente lo que escribiste.

- **negrita** con dos asteriscos, *itálica* con uno y ***las dos juntas*** con tres
- ~~tachado~~ con dos virgulillas
- `código` entre comillas invertidas

> Probá: borrá uno de los asteriscos de **negrita** y mirá cómo cambia al instante.

## 2. Atajos de teclado

Seleccioná una palabra de esta línea y apretá Alt+b para ponerla en negrita. Apretá Alt+b otra vez para sacársela.

- [ ] Poné en itálica esta palabra: ejemplo (Alt+i)
- [ ] Tachá esta otra: viejo (Alt+Shift+S)
- [ ] Convertí esto en un link: Cuis (Alt+Shift+L)
- [ ] Poné el cursor en la línea de abajo y apretá Alt+t varias veces

Esta línea va a ser un título

Cuando termines cada paso, poné el cursor en su línea y apretá Alt+Shift+T para marcarlo como hecho.

## 3. Vista previa

Apretá Alt+p. Se abre una ventana con el documento sin los símbolos de Markdown, que se actualiza mientras escribís acá. Ponela al lado de esta y probá cambiar algo.

## 4. Links

Los links se escriben así: [la página de Cuis](https://cuis.st). En la vista previa se pueden clickear. En el editor, poné el cursor adentro del link y apretá Alt+o.

- Los links a archivos .md se abren en otro Markdown Editor.
- Los links web se copian al portapapeles, porque Cuis no puede abrir el navegador.

## 5. Más sintaxis

Títulos subrayados
------------------

| Atajo | Acción |
|-------|--------|
| Alt+b | Negrita |
| Alt+i | Itálica |
| Alt+Shift+S | Tachado |
| Alt+Shift+L | Link |
| Alt+t | Título |
| Alt+Shift+T | Tarea |
| Alt+o | Abrir link |
| Alt+p | Vista previa |

1. Listas numeradas
2. Citas, empezando la línea con >
3. Líneas horizontales, con ---

```
"Lo que está en un bloque de código no se interpreta: **esto** queda igual"
Transcript show: ''Hola''
```

Para escribir un símbolo sin que sea formato, escapalo: \*esto no es itálica\*

---

## 6. Todavía más

Las líneas seguidas forman un solo párrafo, como en GitHub:
esta línea se une con la anterior en la vista previa.  
Para cortar la línea, terminala con dos espacios (como la anterior) o con una \
como esta.

- Las listas se pueden anidar
  - dejando dos espacios
    - por cada nivel

> Las citas pueden tener **formato**,
> varias líneas y listas:
>
> - como esta
>
> > y otras citas adentro

Links sin corchetes: https://cuis.st o <https://github.com>. Links con referencia: [la página de Cuis][cuis]. Links a una sección de este documento: [volver al principio](#bienvenido-al-markdown-editor) (clickealo en la vista previa, o poné el cursor ahí y apretá Alt+o).

[cuis]: https://cuis.st

Imágenes (en la vista previa se ve la imagen):

!![Logo de Smalltalk](Packages/Erudite/smalltalk-logo.png)

Notas al pie[^nota], emojis :smile: :heart: :coffee: y un poco de HTML: <mark>resaltado</mark>, <u>subrayado</u>, H<sub>2</sub>O y x<sup>2</sup>.

[^nota]: Las notas aparecen numeradas en la vista previa.

Fórmulas, con la notación de LaTeX: $e^{i\pi} + 1 = 0$ y

$$
\sum_{i=1}^{n} i = \frac{n(n+1)}{2}
$$

Los bloques de código se colorean según el lenguaje:

```smalltalk
"Smalltalk se colorea igual que en un Workspace"
#(1 2 3) inject: 0 into: [ :suma :cada | suma + cada ]
```

```python
def doble(x):  # y otros lenguajes también
    return x * 2
```

    Y el código también se puede escribir con cuatro espacios de sangría.

## 7. Guardar y abrir archivos

Para guardar lo que escribiste como un archivo .md, hacé clic derecho y elegí *Save As Markdown...*: te propone guardarlo en la carpeta FileOuts (donde quedan los file outs de código), con el nombre del primer título. Después, el menú de la ventana guarda en ese mismo archivo.

Con *Save As HTML...* lo guardás como una página web, para abrirla en cualquier navegador.

Para abrir un archivo .md, buscalo en el File List y usá el botón *Markdown Editor*.

¡Listo!! Ya podés cerrar este tutorial.'! !

!MarkdownTextModel class methodsFor: 'menu-world' stamp: 'AP 11/Oct/2026 12:00:00'!
worldMenuOptions

	^{{
		#submenuOf -> TheWorldMenu openLabel.
		#itemGroup -> 10.
		#itemOrder -> 15.
		#label -> 'Markdown Editor'.
		#object -> MarkdownTextModel.
		#selector -> #open.
		#icon -> #textEditorIcon.
		#balloonText -> 'A text editor that highlights Markdown syntax'.
	} asDictionary}! !

!MarkdownTextModel class methodsFor: 'file list services' stamp: 'AP 11/Oct/2026 12:00:00'!
fileReaderServicesForFileEntry: aFileEntry suffix: suffix

	^(#('md' 'markdown') includes: suffix)
		ifTrue: [ { self serviceOpenInMarkdownEditor } ]
		ifFalse: [ #() ]! !

!MarkdownTextModel class methodsFor: 'file list services' stamp: 'AP 11/Oct/2026 12:00:00'!
serviceOpenInMarkdownEditor

	^(SimpleServiceEntry
		provider: self
		label: 'Markdown Editor'
		selector: #openOn:
		description: 'open the file in a Markdown Editor'
		icon: #textEditorIcon)
			argumentGetter: [ :fileList | fileList selectedFileEntry ]! !


!MarkdownTextEditor methodsFor: 'menu & kbd shortcuts' stamp: 'AP 11/Oct/2026 12:00:00'!
defaultMenuSpec

	^super defaultMenuSpec, self markdownMenuSpec! !

!MarkdownTextEditor methodsFor: 'menu & kbd shortcuts' stamp: 'AP 11/Oct/2026 12:00:00'!
markdownMenuSpec
	"See comment at Morph >> #getMenu"

	^#(
		#(270 '-----')
		#(271 'Bold (b)' $b editor toggleBold nil 'Enclose the selection in ** (or remove them)')
		#(272 'Italic (i)' $i editor toggleItalic nil 'Enclose the selection in * (or remove them)')
		#(273 'Strikethrough (S)' $S editor toggleStrikethrough nil 'Enclose the selection in ~~ (or remove them)')
		#(274 'Inline Code (`)' nil editor encloseWithBackTicks nil 'Enclose the selection in backticks (or remove them)')
		#(275 'Link (L)' $L editor insertLink nil 'Make the selection the text of a new link')
		#(276 'Heading (t)' $t editor cycleHeading nil 'Change the heading level of the current line: none, #, ## and ###')
		#(277 'Task (T)' $T editor toggleTask nil 'Make the current line a task, or check / uncheck it')
		#(278 'Open Link (o)' $o editor openLinkAtCursor nil 'Open the link at the cursor')
		#(279 'Preview (p)' $p model openPreview nil 'Open a rendered preview that is updated as you type')
		#(280 'Save As Markdown...' nil editor saveAsMarkdown nil 'Save the Markdown text as a .md file, in the FileOuts directory')
		#(281 'Save As HTML...' nil editor saveAsHtml nil 'Save the text as an HTML page that can be opened in a web browser, in the FileOuts directory')
		#(282 'Markdown Tutorial' nil model openTutorial nil 'Open the Markdown Editor tutorial')
	)! !

!MarkdownTextEditor methodsFor: 'markdown commands' stamp: 'AP 11/Oct/2026 12:00:00'!
toggleBold
	"This is a user command, and generates undo"

	^self toggleDelimiter: '**'! !

!MarkdownTextEditor methodsFor: 'markdown commands' stamp: 'AP 11/Oct/2026 12:00:00'!
toggleItalic
	"This is a user command, and generates undo"

	^self toggleDelimiter: '*'! !

!MarkdownTextEditor methodsFor: 'markdown commands' stamp: 'AP 11/Oct/2026 12:00:00'!
toggleStrikethrough
	"This is a user command, and generates undo"

	^self toggleDelimiter: '~~'! !

!MarkdownTextEditor methodsFor: 'markdown commands' stamp: 'AP 11/Oct/2026 12:00:00'!
insertLink
	"Make the selection the text of a link, and select its url to be typed.
	This is a user command, and generates undo"

	| start linkText |
	start := self startIndex.
	linkText := self selection asPlainString.
	linkText isEmpty ifTrue: [ linkText := 'text' ].
	self replaceSelectionWith: (self textFor: '[', linkText, '](url)').
	self selectFrom: start + linkText size + 3 to: start + linkText size + 5.
	^true! !

!MarkdownTextEditor methodsFor: 'markdown commands' stamp: 'AP 11/Oct/2026 12:00:00'!
cycleHeading
	"Change the current line from normal text to heading 1, 2, 3 and back to normal text.
	This is a user command, and generates undo"

	| level prefixSize newLevel |
	level := self currentHeadingLevel.
	prefixSize := level = 0
		ifTrue: [ 0 ]
		ifFalse: [ level + 1 min: self currentLine size ].
	newLevel := level >= 3 ifTrue: [ 0 ] ifFalse: [ level + 1 ].
	self replace: prefixSize charactersAt: self currentLineInterval first with: (self headingPrefixOfLevel: newLevel).
	^true! !

!MarkdownTextEditor methodsFor: 'markdown commands' stamp: 'AP 11/Oct/2026 12:00:00'!
toggleTask
	"Make the current line a task list item, or check / uncheck it if it already is one.
	This is a user command, and generates undo"

	| lineStart lineRanges |
	lineStart := self currentLineInterval first.
	lineRanges := MarkdownParser rangesIn: self currentLine.
	(self rangeOfType: #uncheckedTask in: lineRanges) ifNotNil: [ :box |
		^self replace: 3 charactersAt: lineStart + box start - 1 with: '[x]' ].
	(self rangeOfType: #checkedTask in: lineRanges) ifNotNil: [ :box |
		^self replace: 3 charactersAt: lineStart + box start - 1 with: '[ ]' ].
	(self rangeOfType: #listMarker in: lineRanges) ifNotNil: [ :marker |
		^self replace: 0 charactersAt: lineStart + marker end + 1 with: '[ ] ' ].
	^self replace: 0 charactersAt: lineStart with: '- [ ] '! !

!MarkdownTextEditor methodsFor: 'markdown commands' stamp: 'AP 11/Oct/2026 12:00:00'!
openLinkAtCursor
	"The whole text is parsed, as reference links may be defined in other lines"

	| url action |
	url := MarkdownParser linkUrlAt: self startIndex in: model actualContents asPlainString.
	url ifNil: [ ^morph flash ].
	action := MarkdownLinkAction url: url relativeTo: model baseDirectory.
	action isAnchor
		ifTrue: [ action goToAnchorIn: self ]
		ifFalse: [ action open ]! !

!MarkdownTextEditor methodsFor: 'markdown commands' stamp: 'AP 11/Oct/2026 12:00:00'!
saveAsMarkdown
	"Ask for a file name, suggesting one in the FileOuts directory (as file outs of code do), and save the Markdown text there"

	DirectoryEntry
		fileOutsDirQuery: model suggestedFileName
		writeStreamDo: [ :stream | | file |
			stream nextPutAll: model contentsForFileSaving.
			file := stream fullName asFileEntry.
			self markdownSavedTo: file.
			morph owningWindow ifNotNil: [ :window |
				window notifyUserWith: 'Markdown saved to', String newLineString, file pathName ]]! !

!MarkdownTextEditor methodsFor: 'markdown commands' stamp: 'AP 11/Oct/2026 12:00:00'!
saveAsHtml
	"Ask for a file name, suggesting one in the FileOuts directory, and save the text as an HTML page there"

	DirectoryEntry
		fileOutsDirQuery: model suggestedHtmlFileName
		writeStreamDo: [ :stream |
			stream nextPutAll: model htmlDocument.
			morph owningWindow ifNotNil: [ :window |
				window notifyUserWith: 'HTML saved to', String newLineString, stream fullName,
					String newLineString, 'Open it in a web browser to see it' ]]! !

!MarkdownTextEditor methodsFor: 'markdown commands' stamp: 'AP 11/Oct/2026 12:00:00'!
markdownSavedTo: aFileEntry
	"From now on, the window is about aFileEntry: saving from its menu writes it, and relative links are relative to its directory"

	model fileEntry: aFileEntry.
	model changed: #clearUserEdits.
	morph owningWindow ifNotNil: [ :window |
		window
			setLabel: aFileEntry name;
			setProperty: #lastFilenameUsedToSave toValue: aFileEntry pathName ]! !

!MarkdownTextEditor methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
toggleDelimiter: aDelimiter
	"Enclose the selection between aDelimiters, or remove them if it is already enclosed.
	This is a user command, and generates undo"

	| start stop delimiterSize selectedText |
	start := self startIndex.
	stop := self stopIndex.
	delimiterSize := aDelimiter size.
	selectedText := self selection.
	(self isFrom: start to: stop enclosedBy: aDelimiter)
		ifTrue: [
			self selectFrom: start - delimiterSize to: stop + delimiterSize - 1.
			self replaceSelectionWith: selectedText.
			self selectFrom: start - delimiterSize to: stop - delimiterSize - 1 ]
		ifFalse: [
			self replaceSelectionWith: (self textFor: aDelimiter), selectedText, (self textFor: aDelimiter).
			self selectFrom: start + delimiterSize to: stop + delimiterSize - 1 ].
	^true! !

!MarkdownTextEditor methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
isFrom: start to: stop enclosedBy: aDelimiter
	"Answer true if the text from start to stop - 1 is between aDelimiters"

	| contents delimiterSize |
	contents := model actualContents asPlainString.
	delimiterSize := aDelimiter size.
	^start > delimiterSize and: [
		stop + delimiterSize - 1 <= contents size and: [
			(contents copyFrom: start - delimiterSize to: start - 1) = aDelimiter and: [
				(contents copyFrom: stop to: stop + delimiterSize - 1) = aDelimiter ]]]! !

!MarkdownTextEditor methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
replace: aSize charactersAt: anIndex with: aString
	"Replace aSize characters at anIndex with aString, keeping the user selection (moved if it is after anIndex).
	This is a user command, and generates undo"

	| start stop delta |
	start := self startIndex.
	stop := self stopIndex.
	delta := aString size - aSize.
	self selectFrom: anIndex to: anIndex + aSize - 1.
	self replaceSelectionWith: (self textFor: aString).
	start >= anIndex ifTrue: [ start := start + delta max: anIndex ].
	stop >= anIndex ifTrue: [ stop := stop + delta max: anIndex ].
	self selectFrom: start to: stop - 1.
	^true! !

!MarkdownTextEditor methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
textFor: aString

	^Text string: aString attributes: emphasisHere! !

!MarkdownTextEditor methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
currentLineInterval

	^model actualContents asPlainString encompassLine: (self startIndex to: self startIndex)! !

!MarkdownTextEditor methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
currentLine

	| interval |
	interval := self currentLineInterval.
	^model actualContents asPlainString copyFrom: interval first to: interval last! !

!MarkdownTextEditor methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
currentHeadingLevel
	"Answer the heading level of the current line, or 0 if it is not a heading"

	^(MarkdownParser rangesIn: self currentLine)
		detect: [ :each | MarkdownParser headingTypes includes: each type ]
		ifFound: [ :heading | MarkdownParser headingTypes indexOf: heading type ]
		ifNone: [ 0 ]! !

!MarkdownTextEditor methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
headingPrefixOfLevel: aLevel

	aLevel = 0 ifTrue: [ ^'' ].
	^(String new: aLevel withAll: $#), ' '! !

!MarkdownTextEditor methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
rangeOfType: aType in: ranges

	^ranges detect: [ :each | each type = aType ] ifNone: [ nil ]! !


!MarkdownHtmlExporter methodsFor: 'initialization' stamp: 'AP 11/Oct/2026 12:00:00'!
initializeSource: aString relativeTo: aDirectoryEntryOrNil

	source := aString.
	baseDirectory := aDirectoryEntryOrNil.
	parser := MarkdownParser new.
	ranges := (parser parse: aString) asArray.
	lines := OrderedCollection new.
	aString lineIndicesDo: [ :start :end :endIncludingNewLine | lines add: start -> end ].
	self indexRangesByLine.
	footnoteNumbers := self numberFootnotes.
	footnotes := Dictionary new! !

!MarkdownHtmlExporter methodsFor: 'exporting' stamp: 'AP 11/Oct/2026 12:00:00'!
document
	"Answer a complete HTML page"

	^String streamContents: [ :stream |
		stream
			nextPutAll: '<!!DOCTYPE html>'; newLine;
			nextPutAll: '<html>'; newLine;
			nextPutAll: '<head>'; newLine;
			nextPutAll: '<meta charset="utf-8">'; newLine;
			nextPutAll: '<title>'; nextPutAll: (self class escape: self title); nextPutAll: '</title>'; newLine;
			nextPutAll: '<style>'; nextPutAll: self class styleSheet; nextPutAll: '</style>'; newLine;
			nextPutAll: '</head>'; newLine;
			nextPutAll: '<body>'; newLine;
			nextPutAll: '<article>'; newLine;
			nextPutAll: self body;
			nextPutAll: '</article>'; newLine;
			nextPutAll: '</body>'; newLine;
			nextPutAll: '</html>'; newLine ]! !

!MarkdownHtmlExporter methodsFor: 'exporting' stamp: 'AP 11/Oct/2026 12:00:00'!
body
	"Answer the HTML of the blocks, followed by the footnotes"

	^String streamContents: [ :stream |
		html := stream.
		lineIndex := 1.
		[ lineIndex <= lines size ] whileTrue: [ self exportBlock ].
		self exportFootnotes ]! !

!MarkdownHtmlExporter methodsFor: 'exporting' stamp: 'AP 11/Oct/2026 12:00:00'!
title
	"The text of the first heading"

	^ranges
		detect: [ :each | MarkdownParser headingTypes includes: each type ]
		ifFound: [ :heading | (MarkdownRenderer render: (source copyFrom: heading start to: heading end)) asPlainString withBlanksTrimmed ]
		ifNone: [ 'Markdown' ]! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportBlock
	"Export the block that starts at the current line, and move to the line after it"

	| kind |
	kind := self kindOfLine: lineIndex.
	kind = #codeFence ifTrue: [ ^self exportFencedCode ].
	kind = #indentedCode ifTrue: [ ^self exportIndentedCode ].
	kind = #mathFence ifTrue: [ ^self exportMathBlock ].
	kind = #mathLine ifTrue: [ ^self exportMathLine ].
	kind = #atxHeading ifTrue: [ ^self exportAtxHeading ].
	kind = #setextHeading ifTrue: [ ^self exportSetextHeading ].
	kind = #horizontalRule ifTrue: [ html nextPutAll: '<hr>'; newLine ].
	kind = #footnote ifTrue: [ self collectFootnote ].
	kind = #quote ifTrue: [ ^self exportQuote ].
	kind = #list ifTrue: [ ^self exportList ].
	kind = #table ifTrue: [ ^self exportTable ].
	kind = #paragraph ifTrue: [ ^self exportParagraph ].
	lineIndex := lineIndex + 1! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
kindOfLine: anIndex
	"The kind of block the line at anIndex starts, according to the ranges in it"

	| types line |
	line := lines at: anIndex.
	types := (rangesByLine at: anIndex) collect: [ :each | each type ].
	(types includes: #codeFence) ifTrue: [ ^#codeFence ].
	(types includes: #codeIndent) ifTrue: [ ^#indentedCode ].
	(types includes: #mathFence) ifTrue: [ ^#mathFence ].
	(types includes: #mathMarkup) ifTrue: [ ^#mathLine ].
	(types includes: #blockquote) ifTrue: [ ^#quote ].
	((rangesByLine at: anIndex) anySatisfy: [ :each |
		(MarkdownParser headingTypes includes: each type) and: [ each start = line key ]]) ifTrue: [
			^((types includes: #markup) and: [ (source at: line key) = $# ])
				ifTrue: [ #atxHeading ]
				ifFalse: [ #setextHeading ]].
	(types includes: #horizontalRule) ifTrue: [ ^#horizontalRule ].
	(types includes: #footnoteMarker) ifTrue: [ ^#footnote ].
	(types includes: #listMarker) ifTrue: [ ^#list ].
	((types includes: #tableDelimiter) or: [ types includes: #tableSeparator ]) ifTrue: [ ^#table ].
	(#(#linkDefinition #htmlCommentBlock #setextUnderline #codeBlock #mathBlock) anySatisfy: [ :each | types includes: each ])
		ifTrue: [ ^#skip ].
	(line key > line value or: [ (source copyFrom: line key to: line value) isEmpty or: [
		(source copyFrom: line key to: line value) allSatisfy: [ :each | each isSeparator ]]]) ifTrue: [ ^#blank ].
	^#paragraph! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportAtxHeading
	"As in ## Title. Headings have an id, so links like [see](#title) work"

	| line heading markup |
	line := lines at: lineIndex.
	heading := (rangesByLine at: lineIndex) detect: [ :each | MarkdownParser headingTypes includes: each type ].
	markup := (rangesByLine at: lineIndex) detect: [ :each | each type = #markup and: [ each start = line key ]].
	self exportHeading: heading contentFrom: markup end + 1 to: heading end.
	lineIndex := lineIndex + 1! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportSetextHeading
	"A paragraph underlined with === or ---"

	| heading |
	heading := (rangesByLine at: lineIndex) detect: [ :each | MarkdownParser headingTypes includes: each type ].
	self exportHeading: heading contentFrom: heading start to: heading end.
	[ lineIndex <= lines size and: [ (lines at: lineIndex) key <= heading end ]] whileTrue: [ lineIndex := lineIndex + 1 ]! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportHeading: aHeadingRange contentFrom: start to: end

	| level content |
	level := (MarkdownParser headingTypes indexOf: aHeadingRange type) printString.
	content := (MarkdownRenderer render: (source copyFrom: start to: end)) asPlainString.
	html
		nextPutAll: '<h'; nextPutAll: level;
		nextPutAll: ' id="'; nextPutAll: (self class escape: (MarkdownParser anchorFor: content)); nextPutAll: '">';
		nextPutAll: (self inlineHtmlFrom: start to: end);
		nextPutAll: '</h'; nextPutAll: level; nextPutAll: '>'; newLine! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportParagraph
	"Consecutive paragraph lines are a single paragraph"

	| start end |
	start := (lines at: lineIndex) key.
	[ lineIndex <= lines size and: [ (self kindOfLine: lineIndex) = #paragraph ]] whileTrue: [
		end := (lines at: lineIndex) value.
		lineIndex := lineIndex + 1 ].
	html nextPutAll: '<p>'; nextPutAll: (self inlineHtmlFrom: start to: end); nextPutAll: '</p>'; newLine! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportFencedCode
	"The language of the block is a class of its code element, as in <code class=""language-smalltalk"">"

	| fence language start end |
	fence := (rangesByLine at: lineIndex) detect: [ :each | each type = #codeFence ].
	language := ((source copyFrom: fence start to: fence end) withBlanksTrimmed allButFirst: 3) withBlanksTrimmed.
	lineIndex := lineIndex + 1.
	start := lineIndex <= lines size ifTrue: [ (lines at: lineIndex) key ] ifFalse: [ source size + 1 ].
	end := start - 1.
	[ lineIndex <= lines size and: [ ((rangesByLine at: lineIndex) anySatisfy: [ :each | each type = #codeFence ]) not ]] whileTrue: [
		end := (lines at: lineIndex) value.
		lineIndex := lineIndex + 1 ].
	lineIndex := lineIndex + 1.
	html nextPutAll: '<pre><code'.
	language isEmpty ifFalse: [ html nextPutAll: ' class="language-'; nextPutAll: (self class escape: language); nextPutAll: '"' ].
	html nextPutAll: '>'; nextPutAll: (self codeHtmlFrom: start to: end); nextPutAll: '</code></pre>'; newLine! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportIndentedCode

	| lineStrings |
	lineStrings := OrderedCollection new.
	[ lineIndex <= lines size and: [ (self kindOfLine: lineIndex) = #indentedCode ]] whileTrue: [ | indent line |
		line := lines at: lineIndex.
		indent := (rangesByLine at: lineIndex) detect: [ :each | each type = #codeIndent ].
		lineStrings add: (self class escape: (source copyFrom: indent end + 1 to: line value)).
		lineIndex := lineIndex + 1 ].
	html nextPutAll: '<pre><code>'.
	lineStrings do: [ :each | html nextPutAll: each ] separatedBy: [ html newLine ].
	html nextPutAll: '</code></pre>'; newLine! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportMathBlock
	"Lines between $$ fences"

	| mathLines |
	mathLines := OrderedCollection new.
	lineIndex := lineIndex + 1.
	[ lineIndex <= lines size and: [ (self kindOfLine: lineIndex) ~= #mathFence ]] whileTrue: [
		mathLines add: (MarkdownMath htmlFor: (source copyFrom: (lines at: lineIndex) key to: (lines at: lineIndex) value)).
		lineIndex := lineIndex + 1 ].
	lineIndex := lineIndex + 1.
	html nextPutAll: '<div class="math">'.
	mathLines do: [ :each | html nextPutAll: each ] separatedBy: [ html nextPutAll: '<br>' ].
	html nextPutAll: '</div>'; newLine! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportMathLine
	"As in $$x^2$$"

	| math |
	math := (rangesByLine at: lineIndex) detect: [ :each | each type = #mathBlock ] ifNone: [ nil ].
	math ifNotNil: [
		html
			nextPutAll: '<div class="math">';
			nextPutAll: (MarkdownMath htmlFor: (source copyFrom: math start to: math end));
			nextPutAll: '</div>'; newLine ].
	lineIndex := lineIndex + 1! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportQuote
	"The quoted text, without its first >, is exported as a document itself. So quotes can have lists, headings or more quotes"

	| quotedLines |
	quotedLines := OrderedCollection new.
	[ lineIndex <= lines size and: [ (self kindOfLine: lineIndex) = #quote ]] whileTrue: [ | line marker |
		line := lines at: lineIndex.
		marker := ((rangesByLine at: lineIndex) select: [ :each | #(#quoteMarker #quoteContinuation) includes: each type ])
			inject: nil into: [ :first :each | (first isNil or: [ each start < first start ]) ifTrue: [ each ] ifFalse: [ first ]].
		quotedLines add: (source copyFrom: marker end + 1 to: line value).
		lineIndex := lineIndex + 1 ].
	html
		nextPutAll: '<blockquote>'; newLine;
		nextPutAll: (self class new
			initializeSource: (String streamContents: [ :stream |
				quotedLines do: [ :each | stream nextPutAll: each ] separatedBy: [ stream newLine ]])
			relativeTo: baseDirectory) body;
		nextPutAll: '</blockquote>'; newLine! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportList
	"Consecutive list items. More indented items are nested lists"

	| openLists |
	openLists := OrderedCollection new.
	[ lineIndex <= lines size and: [ (self kindOfLine: lineIndex) = #list ]] whileTrue: [ | line marker indent tag |
		line := lines at: lineIndex.
		marker := (rangesByLine at: lineIndex) detect: [ :each | each type = #listMarker ].
		indent := marker start - line key.
		tag := ('-*+' includes: (source at: marker start)) ifTrue: [ 'ul' ] ifFalse: [ 'ol' ].
		[ openLists notEmpty and: [ openLists last key > indent ]] whileTrue: [ self closeList: openLists removeLast ].
		(openLists notEmpty and: [ openLists last key = indent and: [ openLists last value ~= tag ]])
			ifTrue: [ self closeList: openLists removeLast ].
		(openLists isEmpty or: [ openLists last key < indent ]) ifTrue: [
			openLists add: indent -> tag.
			html nextPut: $<; nextPutAll: tag.
			(tag = 'ol' and: [ (source copyFrom: marker start to: marker end - 1) ~= '1' ]) ifTrue: [
				html nextPutAll: ' start="'; nextPutAll: (source copyFrom: marker start to: marker end - 1); nextPutAll: '"' ].
			html nextPut: $>; newLine ].
		html
			nextPutAll: '<li>';
			nextPutAll: (self inlineHtmlFrom: marker end + 1 to: line value) withBlanksTrimmed;
			nextPutAll: '</li>'; newLine.
		lineIndex := lineIndex + 1 ].
	openLists reverseDo: [ :each | self closeList: each ]! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
closeList: anIndentAndTag

	html nextPutAll: '</'; nextPutAll: anIndentAndTag value; nextPut: $>; newLine! !

!MarkdownHtmlExporter methodsFor: 'blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
exportTable
	"Rows before the separator are the header"

	| table isHeader |
	table := (MarkdownTable tablesIn: source ranges: ranges) detect: [ :each | each firstRow start = (lines at: lineIndex) key ].
	isHeader := table hasHeader.
	html nextPutAll: '<table>'; newLine.
	isHeader ifTrue: [ html nextPutAll: '<thead>'; newLine ].
	table rowsDo: [ :row |
		row isSeparator
			ifTrue: [
				isHeader ifTrue: [ html nextPutAll: '</thead>'; newLine; nextPutAll: '<tbody>'; newLine ].
				isHeader := false ]
			ifFalse: [
				html nextPutAll: '<tr>'.
				row cells withIndexDo: [ :cell :column | | tag |
					tag := isHeader ifTrue: [ 'th' ] ifFalse: [ 'td' ].
					html nextPut: $<; nextPutAll: tag.
					(table alignmentOfColumn: column) = #left ifFalse: [
						html nextPutAll: ' style="text-align:'; nextPutAll: (table alignmentOfColumn: column); nextPutAll: '"' ].
					html
						nextPut: $>;
						nextPutAll: (self inlineHtmlFrom: cell first to: cell first + cell size - 1);
						nextPutAll: '</'; nextPutAll: tag; nextPut: $> ].
				html nextPutAll: '</tr>'; newLine ].
		lineIndex := lineIndex + 1 ].
	table hasHeader ifTrue: [ html nextPutAll: '</tbody>'; newLine ].
	html nextPutAll: '</table>'; newLine! !

!MarkdownHtmlExporter methodsFor: 'footnotes' stamp: 'AP 11/Oct/2026 12:00:00'!
collectFootnote
	"Footnote definitions are exported at the end of the document"

	| line marker |
	line := lines at: lineIndex.
	marker := (rangesByLine at: lineIndex) detect: [ :each | each type = #footnoteMarker ].
	footnotes
		at: (footnoteNumbers at: (self footnoteLabelOf: marker))
		put: (self inlineHtmlFrom: marker end + 1 to: line value) withBlanksTrimmed! !

!MarkdownHtmlExporter methodsFor: 'footnotes' stamp: 'AP 11/Oct/2026 12:00:00'!
exportFootnotes

	footnotes isEmpty ifTrue: [ ^self ].
	html nextPutAll: '<section class="footnotes">'; newLine; nextPutAll: '<hr>'; newLine; nextPutAll: '<ol>'; newLine.
	footnotes keys asSortedCollection do: [ :number |
		html
			nextPutAll: '<li id="fn-'; print: number; nextPutAll: '">';
			nextPutAll: (footnotes at: number);
			nextPutAll: ' <a href="#fnref-'; print: number; nextPutAll: '">↩</a></li>'; newLine ].
	html nextPutAll: '</ol>'; newLine; nextPutAll: '</section>'; newLine! !

!MarkdownHtmlExporter methodsFor: 'footnotes' stamp: 'AP 11/Oct/2026 12:00:00'!
numberFootnotes
	"Footnotes are numbered in the order they appear, whatever their labels are"

	| numbers |
	numbers := Dictionary new.
	((ranges select: [ :each | #(#footnoteReference #footnoteMarker) includes: each type ])
		asSortedCollection: [ :one :another | one start <= another start ])
			do: [ :each | numbers at: (self footnoteLabelOf: each) ifAbsentPut: [ numbers size + 1 ]].
	^numbers! !

!MarkdownHtmlExporter methodsFor: 'footnotes' stamp: 'AP 11/Oct/2026 12:00:00'!
footnoteLabelOf: aRange

	^source
		copyFrom: aRange start + 2
		to: aRange end - (aRange type = #footnoteMarker ifTrue: [ 2 ] ifFalse: [ 1 ])! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
inlineHtmlFrom: start to: end
	"Answer the HTML of the inline elements from start to end.
	Some ranges enclose their text in tags (as <strong> for #bold). Others replace their text (as markup, that is not exported)"

	| spanRanges nextRange openRanges index |
	spanRanges := self rangesFrom: start to: end.
	nextRange := 1.
	openRanges := OrderedCollection new.
	index := start.
	^String streamContents: [ :stream |
		[ index <= end ] whileTrue: [ | replaced |
			[ openRanges notEmpty and: [ openRanges last end < index ]] whileTrue: [
				stream nextPutAll: (self closingTagOf: openRanges removeLast) ].
			replaced := false.
			[ replaced not and: [ nextRange <= spanRanges size and: [ (spanRanges at: nextRange) start <= index ]]] whileTrue: [ | range |
				range := spanRanges at: nextRange.
				nextRange := nextRange + 1.
				(self openingTagOf: range) ifNotNil: [ :tag |
					stream nextPutAll: tag.
					openRanges add: range ].
				(self replacementOf: range) ifNotNil: [ :replacement |
					stream nextPutAll: replacement.
					index := range end + 1.
					replaced := true.
					[ nextRange <= spanRanges size and: [ (spanRanges at: nextRange) start <= range end ]] whileTrue: [
						nextRange := nextRange + 1 ]]].
			replaced ifFalse: [
				stream nextPutAll: (self class escape: (source at: index) asString).
				index := index + 1 ]].
		openRanges reverseDo: [ :each | stream nextPutAll: (self closingTagOf: each) ]]! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
codeHtmlFrom: start to: end
	"The code of a code block, with its highlighted elements in <span>s of a class, as <span class=""keyword"">"

	| codeRanges index |
	codeRanges := (self rangesFrom: start to: end) select: [ :each | (self codeClassOf: each) notNil ].
	index := start.
	^String streamContents: [ :stream |
		codeRanges do: [ :each |
			each start >= index ifTrue: [
				stream nextPutAll: (self class escape: (source copyFrom: index to: each start - 1)).
				stream
					nextPutAll: '<span class="'; nextPutAll: (self codeClassOf: each); nextPutAll: '">';
					nextPutAll: (self class escape: (source copyFrom: each start to: each end));
					nextPutAll: '</span>'.
				index := each end + 1 ]].
		index <= end ifTrue: [ stream nextPutAll: (self class escape: (source copyFrom: index to: end)) ]]! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
codeClassOf: aRange
	"The class of the <span> of highlighted code, or nil if it is not highlighted"

	| type |
	type := aRange type.
	(#(#codeKeyword #codeString #codeNumber #codeComment) includes: type) ifTrue: [ ^(type allButFirst: 4) asLowercase ].
	(type beginsWith: MarkdownCodeHighlighter smalltalkTypePrefix) ifFalse: [ ^nil ].
	(type includesSubString: 'omment') ifTrue: [ ^'comment' ].
	(#('string' 'symbol' 'character' 'Symbol') anySatisfy: [ :each | type includesSubString: each ]) ifTrue: [ ^'string' ].
	(type includesSubString: 'number') ifTrue: [ ^'number' ].
	(#('self' 'super' 'true' 'false' 'nil' 'thisContext' 'return') anySatisfy: [ :each | type endsWith: each ]) ifTrue: [ ^'keyword' ].
	^nil! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
openingTagOf: aRange
	"The tag that starts the HTML of aRange, or nil if aRange is not enclosed in a tag"

	| type |
	type := aRange type.
	(self isInsideHtmlTag: aRange) ifTrue: [ ^nil ].
	type = #link ifTrue: [ ^self anchorTagFor: (parser urlOfLink: aRange) ].
	type = #autolink ifTrue: [ ^self anchorTagFor: (parser urlOfLink: aRange) ].
	type = #boldItalic ifTrue: [ ^'<strong><em>' ].
	type = #completedTaskText ifTrue: [ ^'<span class="done">' ].
	^(self class tags at: type ifAbsent: [ ^nil ]) ifNotNil: [ :tag | '<', tag, '>' ]! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
closingTagOf: aRange

	| type |
	type := aRange type.
	(#(#link #autolink) includes: type) ifTrue: [ ^'</a>' ].
	type = #boldItalic ifTrue: [ ^'</em></strong>' ].
	type = #completedTaskText ifTrue: [ ^'</span>' ].
	^'</', (self class tags at: type), '>'! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
isInsideHtmlTag: aRange
	"Text styled by HTML tags, as in <b>this</b>, is exported with its tags, so it is not enclosed again"

	^aRange start > 1 and: [
		(source at: aRange start - 1) = $> and: [
			ranges anySatisfy: [ :each | each type = #htmlTag and: [ each end = (aRange start - 1) ]]]]! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
anchorTagFor: aUrl

	^'<a href="', (self class escape: (aUrl ifNil: [ '' ])), '">'! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
replacementOf: aRange
	"The HTML that replaces the text of aRange, or nil if its text is exported"

	| type text |
	type := aRange type.
	text := source copyFrom: aRange start to: aRange end.
	(#(#markup #escape #linkUrl #linkReference #quoteMarker #quoteContinuation #listMarker #mathMarkup) includes: type) ifTrue: [ ^'' ].
	(#(#htmlTag #htmlComment #htmlLineBreak) includes: type) ifTrue: [ ^text ].
	type = #softBreak ifTrue: [ ^String newLineString ].
	type = #hardBreak ifTrue: [ ^'<br>' ].
	type = #uncheckedTask ifTrue: [ ^'<input type="checkbox" disabled>' ].
	type = #checkedTask ifTrue: [ ^'<input type="checkbox" checked disabled>' ].
	type = #emoji ifTrue: [ ^MarkdownParser emojis at: (text copyFrom: 2 to: text size - 1) ].
	type = #math ifTrue: [ ^'<span class="math">', (MarkdownMath htmlFor: text), '</span>' ].
	type = #image ifTrue: [ ^self imageHtmlOf: aRange ].
	type = #footnoteReference ifTrue: [ ^self footnoteReferenceHtmlOf: aRange ].
	^nil! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
imageHtmlOf: anImageRange
	"HTML images are exported as they are. Relative paths of images are made absolute, as the HTML may be saved in another directory"

	| link url alternativeText |
	(source at: anImageRange start) = $< ifTrue: [ ^source copyFrom: anImageRange start to: anImageRange end ].
	link := parser rangeOfType: #link in: anImageRange.
	url := (link ifNotNil: [ parser urlOfLink: link ]) ifNil: [ '' ].
	alternativeText := (parser rangeOfType: #linkText in: anImageRange)
		ifNil: [ '' ]
		ifNotNil: [ :textRange | source copyFrom: textRange start to: textRange end ].
	^'<img src="', (self class escape: (self imageSourceFor: url)), '" alt="', (self class escape: alternativeText), '">'! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
imageSourceFor: aUrl

	| action |
	action := MarkdownLinkAction url: aUrl relativeTo: baseDirectory.
	(action isWebLink or: [ baseDirectory isNil or: [ aUrl isEmpty ]]) ifTrue: [ ^aUrl ].
	^'file:///', (action fileEntry pathName copyReplaceAll: '\' with: '/')! !

!MarkdownHtmlExporter methodsFor: 'inline' stamp: 'AP 11/Oct/2026 12:00:00'!
footnoteReferenceHtmlOf: aRange

	| number |
	number := (footnoteNumbers at: (self footnoteLabelOf: aRange)) printString.
	^'<sup id="fnref-', number, '"><a href="#fn-', number, '">', number, '</a></sup>'! !

!MarkdownHtmlExporter methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
indexRangesByLine
	"rangesByLine has, for each line, the ranges that start in it"

	| sortedRanges nextRange |
	sortedRanges := ranges asSortedCollection: [ :one :another | one start <= another start ].
	nextRange := 1.
	rangesByLine := lines collect: [ :line | | lineRanges |
		lineRanges := OrderedCollection new.
		[ nextRange <= sortedRanges size and: [ (sortedRanges at: nextRange) start <= line value ]] whileTrue: [
			lineRanges add: (sortedRanges at: nextRange).
			nextRange := nextRange + 1 ].
		lineRanges ]! !

!MarkdownHtmlExporter methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
rangesFrom: start to: end
	"The ranges inside start and end, sorted by start. Ranges that start at the same index are sorted from the longest, so they are opened first"

	^((ranges select: [ :each | each start >= start and: [ each end <= end ]])
		asSortedCollection: [ :one :another |
			one start < another start or: [ one start = another start and: [ one end >= another end ]]]) asArray! !

!MarkdownHtmlExporter class methodsFor: 'exporting' stamp: 'AP 11/Oct/2026 12:00:00'!
documentFor: aString relativeTo: aDirectoryEntryOrNil
	"Answer an HTML page with the Markdown text of aString.
	(MarkdownHtmlExporter documentFor: '# Hola **mundo**' relativeTo: nil) edit"

	^(self new initializeSource: aString relativeTo: aDirectoryEntryOrNil) document! !

!MarkdownHtmlExporter class methodsFor: 'exporting' stamp: 'AP 11/Oct/2026 12:00:00'!
bodyFor: aString
	"Answer the HTML of the Markdown text of aString, without the rest of the page"

	^(self new initializeSource: aString relativeTo: nil) body! !

!MarkdownHtmlExporter class methodsFor: 'exporting' stamp: 'AP 11/Oct/2026 12:00:00'!
escape: aString
	"Characters that have a meaning in HTML are written as entities"

	^String streamContents: [ :stream |
		aString do: [ :each |
			each = $& ifTrue: [ stream nextPutAll: '&amp;' ].
			each = $< ifTrue: [ stream nextPutAll: '&lt;' ].
			each = $> ifTrue: [ stream nextPutAll: '&gt;' ].
			each = $" ifTrue: [ stream nextPutAll: '&quot;' ].
			('&<>"' includes: each) ifFalse: [ stream nextPut: each ]]]! !

!MarkdownHtmlExporter class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
tags
	"Range types that are enclosed in a tag"

	^`Dictionary new
		at: #bold put: 'strong';
		at: #italic put: 'em';
		at: #strikethrough put: 'del';
		at: #inlineCode put: 'code';
		at: #underline put: 'u';
		at: #highlight put: 'mark';
		at: #superscript put: 'sup';
		at: #subscript put: 'sub';
		yourself`! !

!MarkdownHtmlExporter class methodsFor: 'constants' stamp: 'AP 11/Oct/2026 12:00:00'!
styleSheet

	^'
body { font-family: -apple-system, "Segoe UI", Helvetica, Arial, sans-serif; line-height: 1.6; color: #24292f; background: #ffffff; }
article { max-width: 860px; margin: 2em auto; padding: 0 1em; }
h1, h2 { border-bottom: 1px solid #d8dee4; padding-bottom: .3em; }
h1, h2, h3, h4, h5, h6 { color: #1a3370; }
a { color: #0550ae; }
code, pre { font-family: "JetBrains Mono", Consolas, monospace; background: #f0f0f0; border-radius: 4px; }
code { padding: .1em .3em; color: #8b1a1a; }
pre { padding: 1em; overflow: auto; }
pre code { padding: 0; color: #24292f; }
blockquote { margin: 0; padding: 0 1em; color: #2f5f2f; border-left: 4px solid #a5c8a5; font-style: italic; }
table { border-collapse: collapse; }
th, td { border: 1px solid #c8ccd0; padding: .3em .8em; }
th { background: #f3f4f6; }
hr { border: 0; border-top: 1px solid #d8dee4; }
img { max-width: 100%; }
mark { background: #fff2a0; }
.done { color: #888888; text-decoration: line-through; }
.math { font-family: "Cambria Math", "STIX Two Math", serif; font-style: italic; color: #006670; }
div.math { text-align: center; margin: 1em 0; }
.keyword { color: #800080; font-weight: bold; }
.string { color: #1a801a; }
.number { color: #1a4dbf; }
.comment { color: #808080; font-style: italic; }
.footnotes { font-size: .9em; }
'! !


!MarkdownParserTest methodsFor: 'tests - plain text' stamp: 'AP 11/Oct/2026 12:00:00'!
test01PlainTextHasNoRanges

	self assertParsing: 'hola mundo' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - plain text' stamp: 'AP 11/Oct/2026 12:00:00'!
test02EmptyTextHasNoRanges

	self assertParsing: '' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test03TextBetweenTwoAsterisksIsBold

	self assertParsing: '**hola**' gives: #(#(#markup 1 2) #(#bold 3 6) #(#markup 7 8))! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test04TextBetweenTwoUnderscoresIsBold

	self assertParsing: '__hola__' gives: #(#(#markup 1 2) #(#bold 3 6) #(#markup 7 8))! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test05TextBetweenOneAsteriskIsItalic

	self assertParsing: '*hola*' gives: #(#(#markup 1 1) #(#italic 2 5) #(#markup 6 6))! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test06TextBetweenOneUnderscoreIsItalic

	self assertParsing: '_hola_' gives: #(#(#markup 1 1) #(#italic 2 5) #(#markup 6 6))! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test07TextBetweenThreeAsterisksIsBoldItalic

	self assertParsing: '***hola***' gives: #(#(#markup 1 3) #(#boldItalic 4 7) #(#markup 8 10))! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test08EmphasisCanBeInTheMiddleOfText

	self assertParsing: 'es **muy** facil' gives: #(#(#markup 4 5) #(#bold 6 8) #(#markup 9 10))! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test09ItalicCanBeInsideBold

	self
		assertParsing: '**a *b* c**'
		gives: #(#(#markup 1 2) #(#bold 3 9) #(#markup 10 11) #(#markup 5 5) #(#italic 6 6) #(#markup 7 7))! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test10UnclosedDelimiterIsNotEmphasis

	self assertParsing: '**hola' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test11DelimitersSurroundedBySpacesAreNotEmphasis

	self assertParsing: 'a * b * c' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test12UnderscoresInsideWordsAreNotEmphasis

	self assertParsing: 'snake_case_name' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test13EmphasisCanSpanLinesOfAParagraph

	self
		assertParsing: (self linesOf: #('*a' 'b*'))
		gives: #(#(#markup 1 1) #(#italic 2 4) #(#markup 5 5) #(#softBreak 3 3))! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test14EscapedDelimitersAreNotEmphasis

	self assertParsing: '\*no\*' gives: #(#(#escape 1 1) #(#escape 5 5))! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test15TextBetweenTwoTildesIsStrikethrough

	self assertParsing: '~~no~~' gives: #(#(#markup 1 2) #(#strikethrough 3 4) #(#markup 5 6))! !

!MarkdownParserTest methodsFor: 'tests - code' stamp: 'AP 11/Oct/2026 12:00:00'!
test16TextBetweenBackticksIsInlineCode

	self assertParsing: 'usar `x := 1` aca' gives: #(#(#markup 6 6) #(#inlineCode 7 12) #(#markup 13 13))! !

!MarkdownParserTest methodsFor: 'tests - code' stamp: 'AP 11/Oct/2026 12:00:00'!
test17MarkupInsideInlineCodeIsNotParsed

	self assertParsing: '`**no**`' gives: #(#(#markup 1 1) #(#inlineCode 2 7) #(#markup 8 8))! !

!MarkdownParserTest methodsFor: 'tests - code' stamp: 'AP 11/Oct/2026 12:00:00'!
test18InlineCodeCanContainBackticksIfDelimitedByMore

	self assertParsing: '``a`b``' gives: #(#(#markup 1 2) #(#inlineCode 3 5) #(#markup 6 7))! !

!MarkdownParserTest methodsFor: 'tests - code' stamp: 'AP 11/Oct/2026 12:00:00'!
test19LinesInsideFencedCodeBlockAreNotParsed

	self
		assertParsing: (self linesOf: #('```' '**x**' '```'))
		gives: #(#(#codeFence 1 3) #(#codeBlock 5 9) #(#codeFence 11 13))! !

!MarkdownParserTest methodsFor: 'tests - code' stamp: 'AP 11/Oct/2026 12:00:00'!
test20TextAfterFencedCodeBlockIsParsed

	self
		assertParsing: (self linesOf: #('```' 'x' '```' '*y*'))
		gives: #(#(#codeFence 1 3) #(#codeBlock 5 5) #(#codeFence 7 9) #(#markup 11 11) #(#italic 12 12) #(#markup 13 13))! !

!MarkdownParserTest methodsFor: 'tests - headings' stamp: 'AP 11/Oct/2026 12:00:00'!
test21LineStartingWithHashIsHeading

	self assertParsing: '# Titulo' gives: #(#(#heading1 1 8) #(#markup 1 2))! !

!MarkdownParserTest methodsFor: 'tests - headings' stamp: 'AP 11/Oct/2026 12:00:00'!
test22NumberOfHashesIsHeadingLevel

	self assertParsing: '### Sub' gives: #(#(#heading3 1 7) #(#markup 1 4)).
	self assertParsing: '###### Chiquito' gives: #(#(#heading6 1 15) #(#markup 1 7))! !

!MarkdownParserTest methodsFor: 'tests - headings' stamp: 'AP 11/Oct/2026 12:00:00'!
test23HashNotFollowedBySpaceIsNotHeading

	self assertParsing: '#hashtag' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - headings' stamp: 'AP 11/Oct/2026 12:00:00'!
test24MoreThanSixHashesIsNotHeading

	self assertParsing: '####### x' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - headings' stamp: 'AP 11/Oct/2026 12:00:00'!
test25HeadingCanHaveInlineMarkup

	self
		assertParsing: '## Un *gran* titulo'
		gives: #(#(#heading2 1 19) #(#markup 1 3) #(#markup 7 7) #(#italic 8 11) #(#markup 12 12))! !

!MarkdownParserTest methodsFor: 'tests - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
test26LineStartingWithGreaterThanIsBlockquote

	self assertParsing: '> cita' gives: #(#(#blockquote 1 6) #(#quoteMarker 1 2))! !

!MarkdownParserTest methodsFor: 'tests - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
test27LineStartingWithDashAsteriskOrPlusIsListItem

	self assertParsing: '- item' gives: #(#(#listMarker 1 1)).
	self assertParsing: '* item' gives: #(#(#listMarker 1 1)).
	self assertParsing: '  + item' gives: #(#(#listMarker 3 3))! !

!MarkdownParserTest methodsFor: 'tests - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
test28LineStartingWithNumberAndDotIsOrderedListItem

	self assertParsing: '12. item' gives: #(#(#listMarker 1 3)).
	self assertParsing: '1) item' gives: #(#(#listMarker 1 2))! !

!MarkdownParserTest methodsFor: 'tests - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
test29NumberWithoutDotIsNotListItem

	self assertParsing: '2026 fue un buen anio' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
test30ListItemCanHaveInlineMarkup

	self assertParsing: '- **x**' gives: #(#(#listMarker 1 1) #(#markup 3 4) #(#bold 5 5) #(#markup 6 7))! !

!MarkdownParserTest methodsFor: 'tests - blocks' stamp: 'AP 11/Oct/2026 12:00:00'!
test31ThreeDashesOrAsterisksAreHorizontalRule

	self assertParsing: '---' gives: #(#(#horizontalRule 1 3)).
	self assertParsing: '* * *' gives: #(#(#horizontalRule 1 5))! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test32TextInBracketsFollowedByUrlInParenthesesIsLink

	self
		assertParsing: '[Cuis](https://cuis.st)'
		gives: #(#(#link 1 23) #(#markup 1 1) #(#linkText 2 5) #(#markup 6 6) #(#linkUrl 7 23))! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test33TextInBracketsWithoutUrlIsNotLink

	self assertParsing: '[nota]' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test34LinkPrecededByExclamationMarkIsImage

	self
		assertParsing: '!![logo](a.png)'
		gives: #(#(#image 1 14) #(#markup 1 1) #(#link 2 14) #(#markup 2 2) #(#linkText 3 6) #(#markup 7 7) #(#linkUrl 8 14))! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test35ExclamationMarkAloneIsNotMarkup

	self assertParsing: 'Hola!!' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - documents' stamp: 'AP 11/Oct/2026 12:00:00'!
test36EachLineIsParsedIndependently

	self
		assertParsing: (self linesOf: #('# T' 'texto **b**'))
		gives: #(#(#heading1 1 3) #(#markup 1 2) #(#markup 11 12) #(#bold 13 13) #(#markup 14 15))! !

!MarkdownParserTest methodsFor: 'tests - documents' stamp: 'AP 11/Oct/2026 12:00:00'!
test37IndicesAreCharacterIndicesEvenWithNonAsciiCharacters

	self
		assertParsing: '**canción** ñandú *ágil*' asUnicodeString
		gives: #(#(#markup 1 2) #(#bold 3 9) #(#markup 10 11) #(#markup 19 19) #(#italic 20 23) #(#markup 24 24))! !

!MarkdownParserTest methodsFor: 'tests - emphasis' stamp: 'AP 11/Oct/2026 12:00:00'!
test38BackslashBeforeNonPunctuationIsNotEscape

	self assertParsing: 'C:\Users' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - headings' stamp: 'AP 11/Oct/2026 12:00:00'!
test39TextUnderlinedWithEqualsIsHeading1

	self
		assertParsing: (self linesOf: #('Titulo' '==='))
		gives: #(#(#heading1 1 6) #(#setextUnderline 8 10))! !

!MarkdownParserTest methodsFor: 'tests - headings' stamp: 'AP 11/Oct/2026 12:00:00'!
test40TextUnderlinedWithDashesIsHeading2

	self
		assertParsing: (self linesOf: #('Titulo' '---'))
		gives: #(#(#heading2 1 6) #(#setextUnderline 8 10))! !

!MarkdownParserTest methodsFor: 'tests - headings' stamp: 'AP 11/Oct/2026 12:00:00'!
test41DashesAfterBlankLineAreHorizontalRule

	self
		assertParsing: (self linesOf: #('' '---'))
		gives: #(#(#horizontalRule 2 4))! !

!MarkdownParserTest methodsFor: 'tests - headings' stamp: 'AP 11/Oct/2026 12:00:00'!
test42UnderlinedHeadingIsStyledBeforeItsInlineElements

	| source |
	source := self linesOf: #('Un *gran* titulo' '===').
	self
		assertParsing: source
		gives: #(#(#heading1 1 16) #(#markup 4 4) #(#italic 5 8) #(#markup 9 9) #(#setextUnderline 18 20)).
	self assert: (MarkdownParser rangesIn: source) first type equals: #heading1! !

!MarkdownParserTest methodsFor: 'tests - tasks' stamp: 'AP 11/Oct/2026 12:00:00'!
test43ListItemStartingWithEmptyBoxIsUncheckedTask

	self assertParsing: '- [ ] tarea' gives: #(#(#listMarker 1 1) #(#uncheckedTask 3 5))! !

!MarkdownParserTest methodsFor: 'tests - tasks' stamp: 'AP 11/Oct/2026 12:00:00'!
test44ListItemStartingWithMarkedBoxIsCompletedTask

	self
		assertParsing: '- [x] hecha'
		gives: #(#(#listMarker 1 1) #(#checkedTask 3 5) #(#completedTaskText 7 11))! !

!MarkdownParserTest methodsFor: 'tests - tasks' stamp: 'AP 11/Oct/2026 12:00:00'!
test45LinkInListItemIsNotTask

	self
		assertParsing: '- [ab](u)'
		gives: #(#(#listMarker 1 1) #(#link 3 9) #(#markup 3 3) #(#linkText 4 5) #(#markup 6 6) #(#linkUrl 7 9))! !

!MarkdownParserTest methodsFor: 'tests - tables' stamp: 'AP 11/Oct/2026 12:00:00'!
test46LineStartingWithPipeIsTableRow

	self
		assertParsing: '| a | b |'
		gives: #(#(#tableDelimiter 1 1) #(#tableDelimiter 5 5) #(#tableDelimiter 9 9))! !

!MarkdownParserTest methodsFor: 'tests - tables' stamp: 'AP 11/Oct/2026 12:00:00'!
test47RowAboveSeparatorIsTableHeader

	self
		assertParsing: (self linesOf: #('| a | b |' '|---|---|'))
		gives: #(#(#tableHeader 1 9) #(#tableDelimiter 1 1) #(#tableDelimiter 5 5) #(#tableDelimiter 9 9) #(#tableSeparator 11 19))! !

!MarkdownParserTest methodsFor: 'tests - tables' stamp: 'AP 11/Oct/2026 12:00:00'!
test48TableCellsCanHaveInlineMarkup

	self
		assertParsing: '| **a** |'
		gives: #(#(#tableDelimiter 1 1) #(#markup 3 4) #(#bold 5 5) #(#markup 6 7) #(#tableDelimiter 9 9))! !

!MarkdownParserTest methodsFor: 'tests - tables' stamp: 'AP 11/Oct/2026 12:00:00'!
test49PipeNotAtLineStartIsNotTable

	self assertParsing: 'a | b' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test50LinkUrlCanBeFoundFromAnIndexInsideTheLink

	self assert: (MarkdownParser linkUrlAt: 6 in: 'ver [esto](a.md) ya') equals: 'a.md'.
	self assert: (MarkdownParser linkUrlAt: 2 in: 'ver [esto](a.md) ya') isNil! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test51LinkTitleIsNotPartOfTheUrl

	self assert: (MarkdownParser linkUrlAt: 2 in: '[a](b.md "titulo")') equals: 'b.md'! !

!MarkdownParserTest methodsFor: 'tests - headings' stamp: 'AP 11/Oct/2026 12:00:00'!
test52HashAloneIsEmptyHeading

	self assertParsing: '#' gives: #(#(#heading1 1 1) #(#markup 1 1))! !

!MarkdownParserTest methodsFor: 'assertions' stamp: 'AP 11/Oct/2026 12:00:00'!
assertParsing: aString gives: expectedRanges
	"Ranges are compared ignoring the order in which the parser found them"

	| actualRanges |
	actualRanges := (MarkdownParser rangesIn: aString) collect: [ :each | each asArray ].
	self assert: (self sorted: expectedRanges) equals: (self sorted: actualRanges)! !

!MarkdownParserTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
sorted: rangeArrays

	^(rangeArrays asSortedCollection: [ :one :another | one printString <= another printString ]) asArray! !

!MarkdownParserTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
linesOf: strings

	^String streamContents: [ :stream |
		strings
			do: [ :each | stream nextPutAll: each ]
			separatedBy: [ stream newLine ]]! !


!MarkdownTextStylerTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test01StylesBoldTextAsBold

	| text |
	text := self style: 'a **b** c'.
	self assert: ((text attributesAt: 5) includes: ShoutTextEmphasis bold).
	self deny: ((text attributesAt: 1) includes: ShoutTextEmphasis bold)! !

!MarkdownTextStylerTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test02StylesHeadingsBiggerThanNormalText

	| text headingSize |
	text := self style: '# Titulo'.
	headingSize := (text attributesAt: 3) detect: [ :each | each class = MarkdownFontSize ].
	self assert: headingSize pointSize > FontFamily defaultPointSize! !

!MarkdownTextStylerTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test03StylesMarkupWithItsOwnColor

	| text |
	text := self style: '**b**'.
	self assert: ((text attributesAt: 1) includes: (ShoutTextColor color: MarkdownTextStyler markupColor))! !

!MarkdownTextStylerTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test04RestylingRemovesStylesThatNoLongerApply

	| text |
	text := self style: '# *Titulo*'.
	text replaceFrom: 1 to: 3 with: '' asText.
	self restyle: text.
	self assert: (text attributesAt: 1) isEmpty! !

!MarkdownTextStylerTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test05StylingDoesNotChangeTheCharacters

	| source |
	source := '# Hola **mundo** `x := 1`'.
	self assert: (self style: source) asPlainString equals: source! !

!MarkdownTextStylerTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test06MarkdownTextModelIsAlwaysStyledWithMarkdownStyler

	| model |
	model := MarkdownTextModel new.
	self assert: model textStylerClass equals: MarkdownTextStyler.
	self assert: model stylesText! !

!MarkdownTextStylerTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test07MarkdownFilesCanBeOpenedFromTheFileList

	self assert: (MarkdownTextModel fileReaderServicesForFileEntry: nil suffix: 'md') size equals: 1.
	self assert: (MarkdownTextModel fileReaderServicesForFileEntry: nil suffix: 'txt') isEmpty! !

!MarkdownTextStylerTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test08CompletedTasksAreStruckThrough

	| text |
	text := self style: '- [x] hecha'.
	self assert: ((text attributesAt: 8) includes: ShoutTextEmphasis struckThrough)! !

!MarkdownTextStylerTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
style: aString

	^self restyle: aString asText! !

!MarkdownTextStylerTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
restyle: aText

	MarkdownTextStyler new
		textModel: MarkdownTextModel new;
		convertAndStyle: aText allowBackgroundStyleProcess: false.
	^aText! !


!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test01PlainTextIsRenderedAsIs

	self assertRendering: 'hola mundo' gives: 'hola mundo'! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test02MarkupIsHiddenButItsStyleIsKept

	| text |
	text := self assertRendering: 'es **muy** facil' gives: 'es muy facil'.
	self assert: ((text attributesAt: 4) includes: ShoutTextEmphasis bold)! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test03HeadingsAreShownBigAndWithoutHashes

	| text |
	text := self assertRendering: '# Titulo' gives: 'Titulo'.
	self assert: ((text attributesAt: 1) anySatisfy: [ :each | each class = MarkdownFontSize ])! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test04HeadingUnderlinesAreHidden

	self
		assertRendering: (self linesOf: #('Titulo' '===' 'texto'))
		gives: (self linesOf: #('Titulo' 'texto'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test05UnorderedListMarkersAreBullets

	self
		assertRendering: (self linesOf: #('- uno' '1. dos'))
		gives: (self linesOf: #('• uno' '1. dos'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test06TaskBoxesAreCheckBoxes

	self
		assertRendering: (self linesOf: #('- [ ] a' '- [x] b'))
		gives: (self linesOf: #('• ☐ a' '• ☑ b'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test07CodeFencesAreHidden

	self
		assertRendering: (self linesOf: #('```' 'x := 1' '```' 'fin'))
		gives: (self linesOf: #('x := 1' 'fin'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test08EscapedCharactersAreShownWithoutBackslash

	self assertRendering: '\*no\*' gives: '*no*'! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test09LinksShowOnlyTheirTextAndCanBeClicked

	| text action |
	text := self assertRendering: 'ver [Cuis](https://cuis.st)' gives: 'ver Cuis'.
	action := (text attributesAt: 5) detect: [ :each | each class = MarkdownLinkAction ].
	self assert: action url equals: 'https://cuis.st'! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test10BlockquoteMarkersAreBars

	self assertRendering: (self linesOf: #('> cita' '> > dentro')) gives: (self linesOf: #('┃ cita' '┃ ┃ dentro'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test11HorizontalRulesAreLines

	self assert: ((self render: '---') asPlainString allSatisfy: [ :each | each = '─' first ])! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test12TablesAreDrawnWithBordersAndAlignedColumns

	self
		assertRendering: (self linesOf: #('| a | bb |' '|---|---|' '| ccc | d |'))
		gives: (self linesOf: #(
			'┌─────┬────┐'
			'│ a   │ bb │'
			'├─────┼────┤'
			'│ ccc │ d  │'
			'└─────┴────┘'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test14HiddenMarkupDoesNotWidenTableColumns

	self
		assertRendering: (self linesOf: #('| **a** | b |' '| cc | [d](x.md) |'))
		gives: (self linesOf: #(
			'┌────┬───┐'
			'│ a  │ b │'
			'│ cc │ d │'
			'└────┴───┘'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test15TableColumnsAreAlignedAsTheSeparatorSays

	self
		assertRendering: (self linesOf: #('| a | b | c |' '|:---|:---:|---:|' '| xxx | yyy | zzz |'))
		gives: (self linesOf: #(
			'┌─────┬─────┬─────┐'
			'│ a   │  b  │   c │'
			'├─────┼─────┼─────┤'
			'│ xxx │ yyy │ zzz │'
			'└─────┴─────┴─────┘'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test16TableRowsWithMissingCellsAreCompleted

	self
		assertRendering: (self linesOf: #('| a | b |' '| c' '|'))
		gives: (self linesOf: #(
			'┌───┬───┐'
			'│ a │ b │'
			'│ c │   │'
			'│   │   │'
			'└───┴───┘'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test17TextAroundTablesIsKept

	self
		assertRendering: (self linesOf: #('antes' '| a |' '' '**despues**'))
		gives: (self linesOf: #('antes' '┌───┐' '│ a │' '└───┘' '' 'despues'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test18TablesAreMonospacedAndKeepTheirStyles

	| text |
	text := self render: (self linesOf: #('| uno |' '|---|' '| dos |')).
	self assert: ((text attributesAt: 11) includesAllOf: (MarkdownTextStyler attributesFor: #table)).
	self assert: ((text attributesAt: 11) includes: ShoutTextEmphasis bold).
	self deny: ((text attributesAt: 27) includes: ShoutTextEmphasis bold)! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test13CodeFenceAtTheEndIsHidden

	self
		assertRendering: (self linesOf: #('```' 'x' '```'))
		gives: 'x'! !

!MarkdownRendererTest methodsFor: 'assertions' stamp: 'AP 11/Oct/2026 12:00:00'!
assertRendering: aString gives: expectedString
	"Answer the rendered Text, for further assertions"

	| text |
	text := self render: aString.
	self assert: text asPlainString equals: expectedString.
	^text! !

!MarkdownRendererTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
render: aString

	^MarkdownRenderer render: aString! !

!MarkdownRendererTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
linesOf: strings

	^String streamContents: [ :stream |
		strings
			do: [ :each | stream nextPutAll: each ]
			separatedBy: [ stream newLine ]]! !


!MarkdownLinkActionTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test01WebLinksAreNotLocalFiles

	self deny: (MarkdownLinkAction url: 'https://cuis.st/README.md' relativeTo: nil) isLocalMarkdownFile! !

!MarkdownLinkActionTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test02OnlyMarkdownFilesAreLocalMarkdownFiles

	self assert: (MarkdownLinkAction url: 'notas.md' relativeTo: nil) isLocalMarkdownFile.
	self deny: (MarkdownLinkAction url: 'logo.png' relativeTo: nil) isLocalMarkdownFile! !

!MarkdownLinkActionTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test03RelativeLinksAreRelativeToTheBaseDirectory

	| baseDirectory fileEntry |
	baseDirectory := DirectoryEntry currentDirectory.
	fileEntry := (MarkdownLinkAction url: 'docs/notas.md' relativeTo: baseDirectory) fileEntry.
	self assert: fileEntry name equals: 'notas.md'.
	self assert: fileEntry parent name equals: 'docs'.
	self assert: fileEntry parent parent pathName equals: baseDirectory pathName! !


!MarkdownTextEditorTest methodsFor: 'setUp/tearDown' stamp: 'AP 11/Oct/2026 12:00:00'!
setUp

	model := MarkdownTextModel new.
	window := model openLabel: 'MarkdownTextEditorTest'.
	window allMorphsDo: [ :each | each class == InnerTextMorph ifTrue: [ textMorph := each ]].
	editor := textMorph editor! !

!MarkdownTextEditorTest methodsFor: 'setUp/tearDown' stamp: 'AP 11/Oct/2026 12:00:00'!
tearDown
	"Close windows without asking to save their edits"

	window disregardUnacceptedEdits; delete.
	previewWindow ifNotNil: [ :preview | preview disregardUnacceptedEdits; delete ]! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test01BoldEnclosesSelectionInDoubleAsterisks

	self contents: 'hola mundo' selecting: (6 to: 10).
	editor toggleBold.
	self assert: self contents equals: 'hola **mundo**'.
	self assert: self selection equals: 'mundo'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test02BoldRemovesDoubleAsterisksIfSelectionIsAlreadyBold

	self contents: 'hola **mundo**' selecting: (8 to: 12).
	editor toggleBold.
	self assert: self contents equals: 'hola mundo'.
	self assert: self selection equals: 'mundo'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test03ItalicAndStrikethroughEncloseSelection

	self contents: 'a b' selecting: (1 to: 1).
	editor toggleItalic.
	self assert: self contents equals: '*a* b'.
	self contents: 'a b' selecting: (3 to: 3).
	editor toggleStrikethrough.
	self assert: self contents equals: 'a ~~b~~'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test04LinkUsesSelectionAsTextAndSelectsUrl

	self contents: 'ver Cuis' selecting: (5 to: 8).
	editor insertLink.
	self assert: self contents equals: 'ver [Cuis](url)'.
	self assert: self selection equals: 'url'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test05HeadingCyclesThroughLevels

	self contents: 'Titulo' selecting: (3 to: 2).
	editor cycleHeading.
	self assert: self contents equals: '# Titulo'.
	editor cycleHeading.
	self assert: self contents equals: '## Titulo'.
	editor cycleHeading.
	self assert: self contents equals: '### Titulo'.
	editor cycleHeading.
	self assert: self contents equals: 'Titulo'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test06HeadingOnlyChangesTheCurrentLine

	self contents: (self linesOf: #('uno' 'dos')) selecting: (6 to: 5).
	editor cycleHeading.
	self assert: self contents equals: (self linesOf: #('uno' '# dos'))! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test07TaskMakesLineATaskAndTogglesIt

	self contents: 'comprar pan' selecting: (1 to: 0).
	editor toggleTask.
	self assert: self contents equals: '- [ ] comprar pan'.
	editor toggleTask.
	self assert: self contents equals: '- [x] comprar pan'.
	editor toggleTask.
	self assert: self contents equals: '- [ ] comprar pan'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test08TaskMakesListItemATask

	self contents: '- item' selecting: (4 to: 3).
	editor toggleTask.
	self assert: self contents equals: '- [ ] item'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test09MarkdownCommandsHaveKeyboardShortcuts

	| shortcuts |
	shortcuts := (editor defaultMenuSpec select: [ :each | each size > 2 ]) collect: [ :each | each third ].
	self assert: (#($b $i $S $L $t $T $o $p) allSatisfy: [ :each | shortcuts includes: each ])! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test10PreviewShowsRenderedContentsAndIsUpdatedWhenTheyChange

	self contents: '# Hola' selecting: (1 to: 0).
	previewWindow := model openPreview.
	self assert: self previewContents equals: 'Hola'.
	self contents: '**Chau**' selecting: (1 to: 0).
	textMorph convertAndStyleIfNeeded.
	self assert: self previewContents equals: 'Chau'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test11KeyboardShortcutsRunMarkdownCommands

	self contents: 'hola mundo' selecting: (6 to: 10).
	textMorph keyboardShortcut: (self keystroke: $b).
	self assert: self contents equals: 'hola **mundo**'.
	textMorph keyboardShortcut: (self keystroke: $t).
	self assert: self contents equals: '# hola **mundo**'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test12SaveAsMarkdownIsInTheMenu

	self assert: (editor defaultMenuSpec anySatisfy: [ :each |
		each size >= 5 and: [ each fifth = #saveAsMarkdown ]])! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test13SuggestedFileNameIsTheFirstHeading

	self contents: (self linesOf: #('intro' '## Mis **notas**: 1/2' '# Otro')) selecting: (1 to: 0).
	self assert: model suggestedFileName equals: 'Mis notas 12.md'.
	self contents: 'sin titulos' selecting: (1 to: 0).
	self assert: model suggestedFileName equals: 'Markdown.md'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test14AfterSavingAsMarkdownTheWindowIsAboutTheSavedFile

	| file |
	file := DirectoryEntry fileOutsDirectory // 'notas.md'.
	editor markdownSavedTo: file.
	self assert: window label equals: 'notas.md'.
	self assert: (window valueOfProperty: #lastFilenameUsedToSave) equals: file pathName.
	self assert: model suggestedFileName equals: 'notas.md'.
	self assert: model baseDirectory pathName equals: DirectoryEntry fileOutsDirectory pathName! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test15MarkdownIsSavedAsItIsWritten

	self contents: (self linesOf: #('# Título' '| a | b |')) selecting: (1 to: 0).
	self assert: model contentsForFileSaving equals: (self linesOf: #('# Título' '| a | b |'))! !

!MarkdownTextEditorTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
keystroke: aCharacter
	"A keyboard event as the one received when the user types aCharacter with the command (Mac) / alt (Windows) key"

	^KeyboardEvent new
		setType: #keystroke
		buttons: InputSensor commandAltKey
		position: 0@0
		keyValue: aCharacter codePoint
		hand: nil
		stamp: 0! !

!MarkdownTextEditorTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
contents: aString selecting: anInterval
	"Changing the model contents makes the text morph install a new editor"

	model actualContents: aString.
	editor := textMorph editor.
	editor selectFrom: anInterval first to: anInterval last! !

!MarkdownTextEditorTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
contents

	^model actualContents asPlainString! !

!MarkdownTextEditorTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
selection

	^editor selection asPlainString! !

!MarkdownTextEditorTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
previewContents

	^previewWindow model actualContents asPlainString! !

!MarkdownTextEditorTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
linesOf: strings

	^String streamContents: [ :stream |
		strings
			do: [ :each | stream nextPutAll: each ]
			separatedBy: [ stream newLine ]]! !


!MarkdownParserTest methodsFor: 'tests - paragraphs' stamp: 'AP 11/Oct/2026 12:00:00'!
test53LinesOfAParagraphAreJoinedBySoftBreaks

	self assertParsing: (self linesOf: #('a' 'b')) gives: #(#(#softBreak 2 2))! !

!MarkdownParserTest methodsFor: 'tests - paragraphs' stamp: 'AP 11/Oct/2026 12:00:00'!
test54TwoSpacesOrABackslashAtTheEndOfALineAreAHardBreak

	self assertParsing: (self linesOf: #('a  ' 'b')) gives: #(#(#hardBreak 2 3)).
	self assertParsing: (self linesOf: #('a\' 'b')) gives: #(#(#hardBreak 2 2))! !

!MarkdownParserTest methodsFor: 'tests - paragraphs' stamp: 'AP 11/Oct/2026 12:00:00'!
test55UnderlinedHeadingsCanHaveManyLines

	self
		assertParsing: (self linesOf: #('a' 'b' '==='))
		gives: #(#(#heading1 1 3) #(#softBreak 2 2) #(#setextUnderline 5 7))! !

!MarkdownParserTest methodsFor: 'tests - code' stamp: 'AP 11/Oct/2026 12:00:00'!
test56LinesIndentedFourSpacesAfterABlankLineAreCode

	self
		assertParsing: (self linesOf: #('' '    x := 1'))
		gives: #(#(#codeBlock 2 11) #(#codeIndent 2 5))! !

!MarkdownParserTest methodsFor: 'tests - code' stamp: 'AP 11/Oct/2026 12:00:00'!
test57IndentedLinesOfAParagraphAreNotCode

	self assertParsing: (self linesOf: #('texto' '    sigue')) gives: #(#(#softBreak 6 6))! !

!MarkdownParserTest methodsFor: 'tests - code' stamp: 'AP 11/Oct/2026 12:00:00'!
test58CodeBlocksAreHighlightedAccordingToTheirLanguage

	| ranges |
	ranges := (MarkdownParser rangesIn: (self linesOf: #('```python' 'return 1' '```'))) collect: [ :each | each asArray ].
	self assert: (ranges includes: #(#codeKeyword 11 16)).
	self assert: (ranges includes: #(#codeNumber 18 18))! !

!MarkdownParserTest methodsFor: 'tests - quotes' stamp: 'AP 11/Oct/2026 12:00:00'!
test59QuotesCanHaveListsAndHeadings

	self
		assertParsing: '> - item'
		gives: #(#(#blockquote 1 8) #(#quoteMarker 1 2) #(#listMarker 3 3)).
	self
		assertParsing: '> # T'
		gives: #(#(#blockquote 1 5) #(#quoteMarker 1 2) #(#heading1 3 5) #(#markup 3 4))! !

!MarkdownParserTest methodsFor: 'tests - quotes' stamp: 'AP 11/Oct/2026 12:00:00'!
test60ConsecutiveQuotedLinesAreAParagraph

	self
		assertParsing: (self linesOf: #('> a' '> b'))
		gives: #(#(#blockquote 1 3) #(#quoteMarker 1 2) #(#softBreak 4 4) #(#blockquote 5 7) #(#quoteContinuation 5 6))! !

!MarkdownParserTest methodsFor: 'tests - quotes' stamp: 'AP 11/Oct/2026 12:00:00'!
test61QuotesCanBeNested

	self assertParsing: '> > a' gives: #(#(#blockquote 1 5) #(#quoteMarker 1 2) #(#quoteMarker 3 4))! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test62UrlsAreLinks

	self assertParsing: 'ver https://cuis.st.' gives: #(#(#autolink 5 19)).
	self assertParsing: 'ver www.cuis.st' gives: #(#(#autolink 5 15)).
	self assertParsing: '<https://a.b>' gives: #(#(#markup 1 1) #(#autolink 2 12) #(#markup 13 13)).
	self assert: (MarkdownParser linkUrlAt: 2 in: '<cuis@cuis.st>') equals: 'mailto:cuis@cuis.st'! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test63ReferenceLinksUseTheUrlOfTheirDefinition

	| text |
	text := self linesOf: #('[Cuis][c]' '[c]: https://cuis.st').
	self
		assertParsing: text
		gives: #(#(#link 1 9) #(#markup 1 1) #(#linkText 2 5) #(#markup 6 6) #(#linkReference 7 9) #(#linkDefinition 11 30)).
	self assert: (MarkdownParser linkUrlAt: 2 in: text) equals: 'https://cuis.st'! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test64TextInBracketsIsALinkOnlyIfItIsDefined

	self assertParsing: '[c]' gives: #().
	self assert: (MarkdownParser linkUrlAt: 2 in: (self linesOf: #('[C]' '[c]: <https://cuis.st>'))) equals: 'https://cuis.st'! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test65FootnotesHaveReferencesAndDefinitions

	self
		assertParsing: (self linesOf: #('a[^1]' '[^1]: nota'))
		gives: #(#(#footnoteReference 2 5) #(#footnoteMarker 7 11))! !

!MarkdownParserTest methodsFor: 'tests - links' stamp: 'AP 11/Oct/2026 12:00:00'!
test66HeadingsHaveAnchorsAsInGitHub

	self assert: (MarkdownParser anchorFor: ' Tablas y **Listas**!! ') equals: 'tablas-y-listas'! !

!MarkdownParserTest methodsFor: 'tests - html' stamp: 'AP 11/Oct/2026 12:00:00'!
test67HtmlTagsStyleTheirText

	self assertParsing: '<b>x</b>' gives: #(#(#htmlTag 1 3) #(#bold 4 4) #(#htmlTag 5 8)).
	self assertParsing: '<span class="a">x</span>' gives: #(#(#htmlTag 1 16) #(#htmlTag 18 24))! !

!MarkdownParserTest methodsFor: 'tests - html' stamp: 'AP 11/Oct/2026 12:00:00'!
test68HtmlLineBreaksCommentsAndImages

	self assertParsing: 'a<br>b<!!-- c -->' gives: #(#(#htmlLineBreak 2 5) #(#htmlComment 7 16)).
	self assertParsing: '<img src="a.png">' gives: #(#(#image 1 17) #(#htmlTag 1 17)).
	self
		assertParsing: (self linesOf: #('<!!-- uno' 'dos -->' 'tres'))
		gives: #(#(#htmlCommentBlock 1 8) #(#htmlCommentBlock 10 16))! !

!MarkdownParserTest methodsFor: 'tests - html' stamp: 'AP 11/Oct/2026 12:00:00'!
test69LessThanIsNotATag

	self assertParsing: 'a < b y c <= d' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - emoji and math' stamp: 'AP 11/Oct/2026 12:00:00'!
test70EmojiShortcodes

	self assertParsing: ':smile: y :nada: a las 10:30' gives: #(#(#emoji 1 7))! !

!MarkdownParserTest methodsFor: 'tests - emoji and math' stamp: 'AP 11/Oct/2026 12:00:00'!
test71MathBetweenDollars

	self assertParsing: '$x^2$' gives: #(#(#markup 1 1) #(#math 2 4) #(#markup 5 5))! !

!MarkdownParserTest methodsFor: 'tests - emoji and math' stamp: 'AP 11/Oct/2026 12:00:00'!
test72PricesAreNotMath

	self assertParsing: 'cuesta $5 y $10' gives: #()! !

!MarkdownParserTest methodsFor: 'tests - emoji and math' stamp: 'AP 11/Oct/2026 12:00:00'!
test73MathBlocks

	self
		assertParsing: (self linesOf: #('$$' 'x' '$$'))
		gives: #(#(#mathFence 1 2) #(#mathBlock 4 4) #(#mathFence 6 7)).
	self
		assertParsing: '$$x$$'
		gives: #(#(#mathMarkup 1 2) #(#mathBlock 3 3) #(#mathMarkup 4 5))! !


!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test19LinesOfAParagraphAreJoined

	self assertRendering: (self linesOf: #('a' 'b')) gives: 'a b'.
	self assertRendering: (self linesOf: #('a  ' 'b')) gives: (self linesOf: #('a' 'b'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test20NestedListsAreIndentedAndHaveOtherBullets

	self
		assertRendering: (self linesOf: #('- a' '  - b' '    - c'))
		gives: (self linesOf: #('• a' '    ◦ b' '        ▪ c'))! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test21ReferenceLinksCanBeClickedAndDefinitionsAreHidden

	| text action |
	text := self assertRendering: (self linesOf: #('[Cuis][c]' '' '[c]: https://cuis.st')) gives: (self linesOf: #('Cuis' '')).
	action := (text attributesAt: 1) detect: [ :each | each class = MarkdownLinkAction ].
	self assert: action url equals: 'https://cuis.st'! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test22FootnotesAreNumberedInOrder

	| text |
	text := self
		assertRendering: (self linesOf: #('a[^x] b[^y]' '[^y]: dos' '[^x]: uno'))
		gives: (self linesOf: #('a1 b2' '2. dos' '1. uno')).
	self assert: ((text attributesAt: 2) includes: ShoutTextEmphasis superscript)! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test23EmojisAreShown

	self assertRendering: 'hola :smile:' gives: 'hola ☺'! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test24MathIsShownWithSymbolsAndSuperscripts

	| text |
	self assertRendering: '$\alpha \leq \beta$' gives: 'α ≤ β'.
	text := self assertRendering: '$x^2$' gives: 'x2'.
	self assert: ((text attributesAt: 2) includes: TextEmphasis superscript)! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test25HtmlTagsAreHiddenButStyleTheirText

	| text |
	text := self assertRendering: 'H<sub>2</sub>O <br>fin' gives: (self linesOf: #('H2O ' 'fin')).
	self assert: ((text attributesAt: 2) includes: ShoutTextEmphasis subscript)! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test26ImagesThatCanNotBeReadShowTheirText

	self assertRendering: '!![logo](no-existe.png)' gives: 'logo'.
	self assertRendering: '<img src="no-existe.png" alt="logo">' gives: 'logo'! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test27LocalImagesAreShown

	| file text |
	file := DirectoryEntry currentDirectory // 'MarkdownRendererTest.bmp'.
	[
		(Form extent: 20 @ 10 depth: 32) fillColor: Color red; writeBMPfileNamed: file pathName.
		text := MarkdownRenderer render: 'a!![logo](MarkdownRendererTest.bmp)b' relativeTo: DirectoryEntry currentDirectory.
		self deny: (text asPlainString includesSubString: 'logo').
		self assert: ((1 to: text size) anySatisfy: [ :index |
			(text attributesAt: index) anySatisfy: [ :each | each anchoredFormOrMorph notNil ]])
	] ensure: [ file delete ]! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test28QuotedLinesAreJoined

	self assertRendering: (self linesOf: #('> a' '> b')) gives: '┃ a b'! !

!MarkdownRendererTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test29IndentationOfCodeIsHidden

	self assertRendering: (self linesOf: #('' '    x := 1')) gives: (self linesOf: #('' 'x := 1'))! !


!MarkdownLinkActionTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test04LinksToHeadingsAreAnchors

	self assert: (MarkdownLinkAction url: '#tablas' relativeTo: nil) isAnchor.
	self deny: (MarkdownLinkAction url: '#tablas' relativeTo: nil) isLocalMarkdownFile! !

!MarkdownLinkActionTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test05AnchorsAreFoundInRenderedText

	| text |
	text := MarkdownRenderer render: (self linesOf: #('intro' '## Mis Tablas' 'fin')).
	self assert: (MarkdownLinkAction headingWithAnchor: 'mis-tablas' in: text) equals: (7 to: 16).
	self assert: (MarkdownLinkAction headingWithAnchor: 'intro' in: text) isNil! !

!MarkdownLinkActionTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
linesOf: strings

	^String streamContents: [ :stream |
		strings
			do: [ :each | stream nextPutAll: each ]
			separatedBy: [ stream newLine ]]! !


!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test16OpeningALinkToAHeadingSelectsIt

	self contents: (self linesOf: #('[ir](#fin)' '' '## Fin')) selecting: (2 to: 1).
	textMorph convertAndStyleIfNeeded.
	editor openLinkAtCursor.
	self assert: self selection equals: '## Fin'! !

!MarkdownTextEditorTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test17SaveAsHtmlIsInTheMenu

	self assert: (editor defaultMenuSpec anySatisfy: [ :each |
		each size >= 5 and: [ each fifth = #saveAsHtml ]]).
	self contents: '# Mis notas' selecting: (1 to: 0).
	self assert: model suggestedHtmlFileName equals: 'Mis notas.html'.
	self assert: (model htmlDocument includesSubString: '<h1 id="mis-notas">Mis notas</h1>')! !


!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test01ParagraphsAndInlineStyles

	self
		assertExporting: (self linesOf: #('hola **mundo** y *más*' 'sigue' '' 'otro'))
		gives: #('<p>hola <strong>mundo</strong> y <em>más</em>' 'sigue</p>' '<p>otro</p>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test02HeadingsHaveIdsForLinks

	self
		assertExporting: (self linesOf: #('## Mis Notas' 'Otro' '---' '[ir](#mis-notas)'))
		gives: #('<h2 id="mis-notas">Mis Notas</h2>' '<h2 id="otro">Otro</h2>' '<p><a href="#mis-notas">ir</a></p>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test03ListsCanBeNested

	self
		assertExporting: (self linesOf: #('- a' '  - b' '- c' '' '3. d'))
		gives: #('<ul>' '<li>a</li>' '<ul>' '<li>b</li>' '</ul>' '<li>c</li>' '</ul>' '<ol start="3">' '<li>d</li>' '</ol>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test04TasksAreCheckBoxes

	self
		assertExporting: '- [x] hecho'
		gives: #('<ul>' '<li><input type="checkbox" checked disabled> <span class="done">hecho</span></li>' '</ul>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test05TablesHaveHeaderAndAlignment

	self
		assertExporting: (self linesOf: #('| a | b |' '|---|---:|' '| 1 | **2** |'))
		gives: #('<table>' '<thead>' '<tr><th>a</th><th style="text-align:right">b</th></tr>' '</thead>' '<tbody>'
			'<tr><td>1</td><td style="text-align:right"><strong>2</strong></td></tr>' '</tbody>' '</table>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test06CodeIsEscapedAndHasItsLanguage

	self
		assertExporting: (self linesOf: #('```text' 'a < b' '```' '' '    x := 1'))
		gives: #('<pre><code class="language-text">a &lt; b</code></pre>' '<pre><code>x := 1</code></pre>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test07LinksImagesAndAutolinks

	self
		assertExporting: '[Cuis](https://cuis.st "t") https://x.org !![l](https://x.org/l.png)'
		gives: #('<p><a href="https://cuis.st">Cuis</a> <a href="https://x.org">https://x.org</a> <img src="https://x.org/l.png" alt="l"></p>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test08QuotesCanHaveOtherBlocks

	self
		assertExporting: (self linesOf: #('> a' '> b' '>' '> - c' '> > d'))
		gives: #('<blockquote>' '<p>a' 'b</p>' '<ul>' '<li>c</li>' '</ul>' '<blockquote>' '<p>d</p>' '</blockquote>' '</blockquote>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test09FootnotesAreAtTheEnd

	self
		assertExporting: (self linesOf: #('[^n]: nota' 'texto[^n]'))
		gives: #('<p>texto<sup id="fnref-1"><a href="#fn-1">1</a></sup></p>' '<section class="footnotes">' '<hr>' '<ol>'
			'<li id="fn-1">nota <a href="#fnref-1">↩</a></li>' '</ol>' '</section>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test10TextIsEscapedButHtmlIsKept

	self assertExporting: 'a < b & c' gives: #('<p>a &lt; b &amp; c</p>').
	self assertExporting: '<b>x</b><br>' gives: #('<p><b>x</b><br></p>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test11MathEmojisAndLineBreaks

	self
		assertExporting: (self linesOf: #('$x_i$ :heart:  ' 'fin'))
		gives: #('<p><span class="math">x<sub>i</sub></span> ♥<br>' 'fin</p>')! !

!MarkdownHtmlExporterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test12DocumentIsACompletePage

	| document |
	document := MarkdownHtmlExporter documentFor: '# Hola' relativeTo: nil.
	self assert: (document beginsWith: '<!!DOCTYPE html>').
	self assert: (document includesSubString: '<meta charset="utf-8">').
	self assert: (document includesSubString: '<title>Hola</title>').
	self assert: (document includesSubString: '<h1 id="hola">Hola</h1>')! !

!MarkdownHtmlExporterTest methodsFor: 'assertions' stamp: 'AP 11/Oct/2026 12:00:00'!
assertExporting: aString gives: expectedLines

	self assert: (MarkdownHtmlExporter bodyFor: aString) equals: (self linesOf: expectedLines), String newLineString! !

!MarkdownHtmlExporterTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
linesOf: strings

	^String streamContents: [ :stream |
		strings
			do: [ :each | stream nextPutAll: each ]
			separatedBy: [ stream newLine ]]! !


!MarkdownMathTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test01SuperscriptsAndSubscripts

	| text |
	text := MarkdownMath textFor: 'x^{n+1} a_i'.
	self assert: text asPlainString equals: 'xn+1 ai'.
	self assert: ((text attributesAt: 2) includes: TextEmphasis superscript).
	self assert: ((text attributesAt: 7) includes: TextEmphasis subscript).
	self assert: (text attributesAt: 1) isEmpty! !

!MarkdownMathTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test02CommandsAreSymbols

	self assert: (MarkdownMath textFor: '\forall x \in \mathbb{R}, x^2 \geq 0') asPlainString equals: '∀ x ∈ ℝ, x2 ≥ 0'! !

!MarkdownMathTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test03FractionsAndRoots

	self assert: (MarkdownMath textFor: '\frac{a+b}{2}') asPlainString equals: '(a+b)/2'.
	self assert: (MarkdownMath textFor: '\sqrt{x+1} + \sqrt 2') asPlainString equals: '√(x+1) + √2'! !

!MarkdownMathTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test04UnknownCommandsAreShownByName

	self assert: (MarkdownMath textFor: '\sin x + \left( y \right)') asPlainString equals: 'sin x + ( y )'! !

!MarkdownMathTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test05Html

	self assert: (MarkdownMath htmlFor: 'x^2 < y_i') equals: 'x<sup>2</sup> &lt; y<sub>i</sub>'! !


!MarkdownCodeHighlighterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test01SmalltalkIsHighlightedByShout

	| ranges |
	ranges := MarkdownCodeHighlighter rangesIn: 'ab3 + 4' from: 3 to: 7 language: 'smalltalk'.
	self assert: ranges notEmpty.
	self assert: (ranges allSatisfy: [ :each | (each type beginsWith: 'st-') and: [ each start >= 3 and: [ each end <= 7 ]]]).
	self assert: ((MarkdownTextStyler attributesFor: (ranges detect: [ :each | each start = 3 ]) type) notEmpty)! !

!MarkdownCodeHighlighterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test02OtherLanguagesHaveCommentsStringsNumbersAndKeywords

	self
		assertHighlighting: 'if x == "a": return 2.5 # fin'
		in: 'python'
		gives: #(#(#codeKeyword 1 2) #(#codeString 9 11) #(#codeKeyword 14 19) #(#codeNumber 21 23) #(#codeComment 25 29))! !

!MarkdownCodeHighlighterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test03CommentsDependOnTheLanguage

	self assertHighlighting: '-- x' in: 'sql' gives: #(#(#codeComment 1 4)).
	self assertHighlighting: 'a /* b */ c' in: 'c' gives: #(#(#codeComment 3 9))! !

!MarkdownCodeHighlighterTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test04CodeWithoutLanguageIsNotHighlighted

	self assertHighlighting: 'return 1' in: '' gives: #()! !

!MarkdownCodeHighlighterTest methodsFor: 'assertions' stamp: 'AP 11/Oct/2026 12:00:00'!
assertHighlighting: aString in: aLanguage gives: expectedRanges

	self
		assert: ((MarkdownCodeHighlighter rangesIn: aString from: 1 to: aString size language: aLanguage) collect: [ :each | each asArray ]) asArray
		equals: expectedRanges! !


!MarkdownTutorialTest methodsFor: 'setUp/tearDown' stamp: 'AP 11/Oct/2026 12:00:00'!
setUp
	"Tests start as if the tutorial was never shown. Its previous state is restored in #tearDown"

	windows := OrderedCollection new.
	previousHasShownTutorial := MarkdownTextModel hasShownTutorial.
	MarkdownTextModel resetTutorial! !

!MarkdownTutorialTest methodsFor: 'setUp/tearDown' stamp: 'AP 11/Oct/2026 12:00:00'!
tearDown

	windows do: [ :each | each disregardUnacceptedEdits; delete ].
	MarkdownTextModel hasShownTutorial: previousHasShownTutorial! !

!MarkdownTutorialTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test01FirstEditorOpenedShowsTheTutorial

	| window |
	window := self keep: MarkdownTextModel open.
	self assert: window label equals: 'Markdown Tutorial'.
	self assert: (self contentsOf: window) equals: MarkdownTextModel tutorialContents! !

!MarkdownTutorialTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test02TutorialIsOnlyShownTheFirstTime

	| window |
	self keep: MarkdownTextModel open.
	window := self keep: MarkdownTextModel open.
	self assert: window label equals: 'Markdown Editor'.
	self assert: (self contentsOf: window) isEmpty! !

!MarkdownTutorialTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test03TutorialCanBeOpenedAgainFromTheEditorMenu

	| window textMorph |
	MarkdownTextModel hasShownTutorial: true.
	window := self keep: MarkdownTextModel open.
	window allMorphsDo: [ :each | each class == InnerTextMorph ifTrue: [ textMorph := each ]].
	self assert: (textMorph editor defaultMenuSpec anySatisfy: [ :each |
		each size >= 5 and: [ each fifth = #openTutorial ]])! !

!MarkdownTutorialTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test04TutorialShowsAllMarkdownElements

	| types |
	types := ((MarkdownParser rangesIn: MarkdownTextModel tutorialContents) collect: [ :each | each type ]) asSet.
	self assert: (#(#heading1 #heading2 #setextUnderline #bold #italic #boldItalic #strikethrough #inlineCode
		#codeFence #codeBlock #codeIndent #blockquote #quoteContinuation #listMarker #uncheckedTask #link #tableHeader #horizontalRule #escape
		#softBreak #hardBreak #autolink #linkReference #linkDefinition #image #footnoteReference #footnoteMarker
		#emoji #highlight #underline #subscript #superscript #math #mathBlock #codeKeyword #codeComment)
			allSatisfy: [ :each | types includes: each ])! !

!MarkdownTutorialTest methodsFor: 'tests' stamp: 'AP 11/Oct/2026 12:00:00'!
test05TutorialExplainsEveryKeyboardShortcut

	| tutorial shortcuts |
	tutorial := MarkdownTextModel tutorialContents.
	shortcuts := (MarkdownTextEditor new markdownMenuSpec select: [ :each | each size > 2 and: [ each third notNil ]])
		collect: [ :each | self tutorialNameOfShortcut: each third ].
	self assert: shortcuts size equals: 8.
	shortcuts do: [ :each | self assert: (tutorial includesSubString: each) description: each, ' is not explained' ]! !

!MarkdownTutorialTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
keep: aWindow
	"Remember aWindow to close it in #tearDown"

	^windows add: aWindow! !

!MarkdownTutorialTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
contentsOf: aWindow

	^aWindow model actualContents asPlainString! !

!MarkdownTutorialTest methodsFor: 'private' stamp: 'AP 11/Oct/2026 12:00:00'!
tutorialNameOfShortcut: aCharacter
	"As written in the tutorial: Alt+b, or Alt+Shift+S for uppercase characters"

	^aCharacter isUppercase
		ifTrue: [ 'Alt+Shift+', aCharacter asString ]
		ifFalse: [ 'Alt+', aCharacter asString ]! !
MarkdownTextStyler initialize!
