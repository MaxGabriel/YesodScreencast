module Handler.PostDetails where

import Import

getPostDetailsR :: BlogPostId -> Handler Html
getPostDetailsR blogPostId = do
    blogPost <- runDB $ get404 blogPostId
    defaultLayout $ do
        $(widgetFile "postDetails/post")
