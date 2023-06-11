function Close (keyPressed)
    print('Menu closed')
    if keyPressed then
        print(('Pressed %s to close the menu'):format(keyPressed))
    end
end

function Check (selected, checked, args)
    print("Check: ", selected, checked, args)
end

function Selected(selected, secondary, args)
    if not secondary then
        print("Normal button")
        GodMode()
    else
        if args.isCheck then
            print("Check button")
        end

        if args.isScroll then
            print("Scroll button")
        end
    end
    print(selected, secondary, json.encode(args, {indent=true}))
end

function Sidescroll (selected, scrollIndex, args)
    print("Scroll: ", selected, scrollIndex, args)
end

lib.registerMenu({
    id = 'adminmenu',
    title = 'Admin Menu',
    position = 'top-right',
    onSideScroll = Sidescroll;
    onSelected = Selected;
    onCheck = Check;
    onClose = Close;
    options = {
        {label = 'God Mode', description = 'It has a description!', fun = ('GodMode')}
    }
}, function(selected, scrollIndex, args)
    print(selected, scrollIndex, args)
end)
 
RegisterCommand('admin', function()
    lib.showMenu('adminmenu')
end)