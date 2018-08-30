require! {
    \./browser/window.ls
    \./pages.ls
    \./seed.ls : { saved }
    \./oldseed.ls
}
get-page = (store, page)->
    return page if page isnt \:init
    stage2 = store.current.page is \locked and not saved!
    store.current.seed = oldseed! if stage2
    return \newseed if stage2
    \wallets
module.exports = (store, page)->
    name = get-page store, page
    window.scroll-to 0, 0
    store.current.page = name
    control = pages[name]
    control.init store if typeof! control?init is \Function