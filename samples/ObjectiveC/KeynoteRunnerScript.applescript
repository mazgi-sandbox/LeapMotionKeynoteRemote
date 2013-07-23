script KeynoteRunnerScript
    -- Inheritance
    property parent : class "NSObject"

    -- Ivars
    property _sentences : class "NSArray"

    -- Property
    on setSentences_(sentences)
        set _sentences to sentences
    end setSentences_

    on startFrom()
        tell application "Keynote"
			if playing is false then
                start from
            end if
            tell slideshow 1
                show slide 1
            end tell
        end tell
    end startFrom

    on stopSlideshow()
        tell application "Keynote"
			if playing is true then
                stop slideshow
            end if
        end tell
    end stopFrom

    on showNext()
        tell application "Keynote"
			if playing is false then
                start from
            end if
            show next
        end tell
    end showNext

    on showPrevious()
        tell application "Keynote"
			if playing is false then
                start from
            end if
            show previous
        end tell
    end showNext

end script
