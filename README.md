# Mo-vi-ment
Mo-vi-ment is a minor mode for Emacs that provides vi-like cursor movement that's easy on your fingers. With 
mo-vi-ment mode enabled, you can move the cursor like so -

        M-&#93;
    
    M-p    M-\
    
        M-&#91;

I didn't map the `H J K L` keys because the were mapped to some pretty frequently used functions.

## Installation
Install it via [MELPA](http://melpa.milkbox.net/).

    M-x package-install RET mo-vi-ment

Or drop `mo-vi-ment.el` somewhere in your load path and add the following to your `.emacs`/`.emacs.d/init.el` 
file.

    (require 'mo-vi-ment)

## Usage

    M-x mo-vi-ment-mode

Or, for a more permanent solution, add this to your `.emacs`/`.emacs.d/init.el` file.

    (mo-vi-ment-mode 1)
