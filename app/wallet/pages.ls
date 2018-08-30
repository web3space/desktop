require! {
    \./wallets.ls
    \./history.ls
    \./send.ls
    \./receive.ls
    \./locked.ls
    \./newseed.ls
}
export loading = ->
    react.create-element 'div', { className: 'loading' }, ' Loading...'
export not-found = ->
    react.create-element 'div', {}, ' Page Not Found'
export wallets
export history
export send
export receive
export locked
export newseed