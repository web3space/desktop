require! {
    \./new-account.ls
    \./refresh-wallet.ls
}
module.exports = (web3, store, cb)->
    store.current.account = new-account store, store.current.seed
    refresh-wallet web3, store, cb