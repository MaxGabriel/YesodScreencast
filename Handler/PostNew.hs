module Handler.PostNew where

import Import

getPostNewR :: Handler Html
getPostNewR = do
    defaultLayout $ do
        $(widgetFile "posts/new")
