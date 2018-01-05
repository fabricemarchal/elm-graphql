module Github.Interface.Node exposing (..)

import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.Node
commonSelection constructor =
    Object.object constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.Node) -> SelectionSet (a -> constructor) Github.Interface.Node
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onAddedToProjectEvent : SelectionSet selection Github.Object.AddedToProjectEvent -> FragmentSelectionSet selection Github.Interface.Node
onAddedToProjectEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "AddedToProjectEvent" fields decoder


onAssignedEvent : SelectionSet selection Github.Object.AssignedEvent -> FragmentSelectionSet selection Github.Interface.Node
onAssignedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "AssignedEvent" fields decoder


onBaseRefChangedEvent : SelectionSet selection Github.Object.BaseRefChangedEvent -> FragmentSelectionSet selection Github.Interface.Node
onBaseRefChangedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "BaseRefChangedEvent" fields decoder


onBaseRefForcePushedEvent : SelectionSet selection Github.Object.BaseRefForcePushedEvent -> FragmentSelectionSet selection Github.Interface.Node
onBaseRefForcePushedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "BaseRefForcePushedEvent" fields decoder


onBlob : SelectionSet selection Github.Object.Blob -> FragmentSelectionSet selection Github.Interface.Node
onBlob (SelectionSet fields decoder) =
    FragmentSelectionSet "Blob" fields decoder


onBot : SelectionSet selection Github.Object.Bot -> FragmentSelectionSet selection Github.Interface.Node
onBot (SelectionSet fields decoder) =
    FragmentSelectionSet "Bot" fields decoder


onClosedEvent : SelectionSet selection Github.Object.ClosedEvent -> FragmentSelectionSet selection Github.Interface.Node
onClosedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ClosedEvent" fields decoder


onCommentDeletedEvent : SelectionSet selection Github.Object.CommentDeletedEvent -> FragmentSelectionSet selection Github.Interface.Node
onCommentDeletedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "CommentDeletedEvent" fields decoder


onCommit : SelectionSet selection Github.Object.Commit -> FragmentSelectionSet selection Github.Interface.Node
onCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "Commit" fields decoder


onCommitComment : SelectionSet selection Github.Object.CommitComment -> FragmentSelectionSet selection Github.Interface.Node
onCommitComment (SelectionSet fields decoder) =
    FragmentSelectionSet "CommitComment" fields decoder


onCommitCommentThread : SelectionSet selection Github.Object.CommitCommentThread -> FragmentSelectionSet selection Github.Interface.Node
onCommitCommentThread (SelectionSet fields decoder) =
    FragmentSelectionSet "CommitCommentThread" fields decoder


onConvertedNoteToIssueEvent : SelectionSet selection Github.Object.ConvertedNoteToIssueEvent -> FragmentSelectionSet selection Github.Interface.Node
onConvertedNoteToIssueEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ConvertedNoteToIssueEvent" fields decoder


onCrossReferencedEvent : SelectionSet selection Github.Object.CrossReferencedEvent -> FragmentSelectionSet selection Github.Interface.Node
onCrossReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "CrossReferencedEvent" fields decoder


onDemilestonedEvent : SelectionSet selection Github.Object.DemilestonedEvent -> FragmentSelectionSet selection Github.Interface.Node
onDemilestonedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "DemilestonedEvent" fields decoder


onDeployKey : SelectionSet selection Github.Object.DeployKey -> FragmentSelectionSet selection Github.Interface.Node
onDeployKey (SelectionSet fields decoder) =
    FragmentSelectionSet "DeployKey" fields decoder


onDeployedEvent : SelectionSet selection Github.Object.DeployedEvent -> FragmentSelectionSet selection Github.Interface.Node
onDeployedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "DeployedEvent" fields decoder


onDeployment : SelectionSet selection Github.Object.Deployment -> FragmentSelectionSet selection Github.Interface.Node
onDeployment (SelectionSet fields decoder) =
    FragmentSelectionSet "Deployment" fields decoder


onDeploymentStatus : SelectionSet selection Github.Object.DeploymentStatus -> FragmentSelectionSet selection Github.Interface.Node
onDeploymentStatus (SelectionSet fields decoder) =
    FragmentSelectionSet "DeploymentStatus" fields decoder


onExternalIdentity : SelectionSet selection Github.Object.ExternalIdentity -> FragmentSelectionSet selection Github.Interface.Node
onExternalIdentity (SelectionSet fields decoder) =
    FragmentSelectionSet "ExternalIdentity" fields decoder


onGist : SelectionSet selection Github.Object.Gist -> FragmentSelectionSet selection Github.Interface.Node
onGist (SelectionSet fields decoder) =
    FragmentSelectionSet "Gist" fields decoder


onGistComment : SelectionSet selection Github.Object.GistComment -> FragmentSelectionSet selection Github.Interface.Node
onGistComment (SelectionSet fields decoder) =
    FragmentSelectionSet "GistComment" fields decoder


onHeadRefDeletedEvent : SelectionSet selection Github.Object.HeadRefDeletedEvent -> FragmentSelectionSet selection Github.Interface.Node
onHeadRefDeletedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefDeletedEvent" fields decoder


onHeadRefForcePushedEvent : SelectionSet selection Github.Object.HeadRefForcePushedEvent -> FragmentSelectionSet selection Github.Interface.Node
onHeadRefForcePushedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefForcePushedEvent" fields decoder


onHeadRefRestoredEvent : SelectionSet selection Github.Object.HeadRefRestoredEvent -> FragmentSelectionSet selection Github.Interface.Node
onHeadRefRestoredEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefRestoredEvent" fields decoder


onIssue : SelectionSet selection Github.Object.Issue -> FragmentSelectionSet selection Github.Interface.Node
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onIssueComment : SelectionSet selection Github.Object.IssueComment -> FragmentSelectionSet selection Github.Interface.Node
onIssueComment (SelectionSet fields decoder) =
    FragmentSelectionSet "IssueComment" fields decoder


onLabel : SelectionSet selection Github.Object.Label -> FragmentSelectionSet selection Github.Interface.Node
onLabel (SelectionSet fields decoder) =
    FragmentSelectionSet "Label" fields decoder


onLabeledEvent : SelectionSet selection Github.Object.LabeledEvent -> FragmentSelectionSet selection Github.Interface.Node
onLabeledEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "LabeledEvent" fields decoder


onLanguage : SelectionSet selection Github.Object.Language -> FragmentSelectionSet selection Github.Interface.Node
onLanguage (SelectionSet fields decoder) =
    FragmentSelectionSet "Language" fields decoder


onLockedEvent : SelectionSet selection Github.Object.LockedEvent -> FragmentSelectionSet selection Github.Interface.Node
onLockedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "LockedEvent" fields decoder


onMarketplaceListing : SelectionSet selection Github.Object.MarketplaceListing -> FragmentSelectionSet selection Github.Interface.Node
onMarketplaceListing (SelectionSet fields decoder) =
    FragmentSelectionSet "MarketplaceListing" fields decoder


onMentionedEvent : SelectionSet selection Github.Object.MentionedEvent -> FragmentSelectionSet selection Github.Interface.Node
onMentionedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MentionedEvent" fields decoder


onMergedEvent : SelectionSet selection Github.Object.MergedEvent -> FragmentSelectionSet selection Github.Interface.Node
onMergedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MergedEvent" fields decoder


onMilestone : SelectionSet selection Github.Object.Milestone -> FragmentSelectionSet selection Github.Interface.Node
onMilestone (SelectionSet fields decoder) =
    FragmentSelectionSet "Milestone" fields decoder


onMilestonedEvent : SelectionSet selection Github.Object.MilestonedEvent -> FragmentSelectionSet selection Github.Interface.Node
onMilestonedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MilestonedEvent" fields decoder


onMovedColumnsInProjectEvent : SelectionSet selection Github.Object.MovedColumnsInProjectEvent -> FragmentSelectionSet selection Github.Interface.Node
onMovedColumnsInProjectEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MovedColumnsInProjectEvent" fields decoder


onOrganization : SelectionSet selection Github.Object.Organization -> FragmentSelectionSet selection Github.Interface.Node
onOrganization (SelectionSet fields decoder) =
    FragmentSelectionSet "Organization" fields decoder


onOrganizationIdentityProvider : SelectionSet selection Github.Object.OrganizationIdentityProvider -> FragmentSelectionSet selection Github.Interface.Node
onOrganizationIdentityProvider (SelectionSet fields decoder) =
    FragmentSelectionSet "OrganizationIdentityProvider" fields decoder


onOrganizationInvitation : SelectionSet selection Github.Object.OrganizationInvitation -> FragmentSelectionSet selection Github.Interface.Node
onOrganizationInvitation (SelectionSet fields decoder) =
    FragmentSelectionSet "OrganizationInvitation" fields decoder


onProject : SelectionSet selection Github.Object.Project -> FragmentSelectionSet selection Github.Interface.Node
onProject (SelectionSet fields decoder) =
    FragmentSelectionSet "Project" fields decoder


onProjectCard : SelectionSet selection Github.Object.ProjectCard -> FragmentSelectionSet selection Github.Interface.Node
onProjectCard (SelectionSet fields decoder) =
    FragmentSelectionSet "ProjectCard" fields decoder


onProjectColumn : SelectionSet selection Github.Object.ProjectColumn -> FragmentSelectionSet selection Github.Interface.Node
onProjectColumn (SelectionSet fields decoder) =
    FragmentSelectionSet "ProjectColumn" fields decoder


onProtectedBranch : SelectionSet selection Github.Object.ProtectedBranch -> FragmentSelectionSet selection Github.Interface.Node
onProtectedBranch (SelectionSet fields decoder) =
    FragmentSelectionSet "ProtectedBranch" fields decoder


onPublicKey : SelectionSet selection Github.Object.PublicKey -> FragmentSelectionSet selection Github.Interface.Node
onPublicKey (SelectionSet fields decoder) =
    FragmentSelectionSet "PublicKey" fields decoder


onPullRequest : SelectionSet selection Github.Object.PullRequest -> FragmentSelectionSet selection Github.Interface.Node
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder


onPullRequestCommit : SelectionSet selection Github.Object.PullRequestCommit -> FragmentSelectionSet selection Github.Interface.Node
onPullRequestCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestCommit" fields decoder


onPullRequestReview : SelectionSet selection Github.Object.PullRequestReview -> FragmentSelectionSet selection Github.Interface.Node
onPullRequestReview (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReview" fields decoder


onPullRequestReviewComment : SelectionSet selection Github.Object.PullRequestReviewComment -> FragmentSelectionSet selection Github.Interface.Node
onPullRequestReviewComment (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewComment" fields decoder


onPullRequestReviewThread : SelectionSet selection Github.Object.PullRequestReviewThread -> FragmentSelectionSet selection Github.Interface.Node
onPullRequestReviewThread (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewThread" fields decoder


onPushAllowance : SelectionSet selection Github.Object.PushAllowance -> FragmentSelectionSet selection Github.Interface.Node
onPushAllowance (SelectionSet fields decoder) =
    FragmentSelectionSet "PushAllowance" fields decoder


onReaction : SelectionSet selection Github.Object.Reaction -> FragmentSelectionSet selection Github.Interface.Node
onReaction (SelectionSet fields decoder) =
    FragmentSelectionSet "Reaction" fields decoder


onRef : SelectionSet selection Github.Object.Ref -> FragmentSelectionSet selection Github.Interface.Node
onRef (SelectionSet fields decoder) =
    FragmentSelectionSet "Ref" fields decoder


onReferencedEvent : SelectionSet selection Github.Object.ReferencedEvent -> FragmentSelectionSet selection Github.Interface.Node
onReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReferencedEvent" fields decoder


onRelease : SelectionSet selection Github.Object.Release -> FragmentSelectionSet selection Github.Interface.Node
onRelease (SelectionSet fields decoder) =
    FragmentSelectionSet "Release" fields decoder


onReleaseAsset : SelectionSet selection Github.Object.ReleaseAsset -> FragmentSelectionSet selection Github.Interface.Node
onReleaseAsset (SelectionSet fields decoder) =
    FragmentSelectionSet "ReleaseAsset" fields decoder


onRemovedFromProjectEvent : SelectionSet selection Github.Object.RemovedFromProjectEvent -> FragmentSelectionSet selection Github.Interface.Node
onRemovedFromProjectEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "RemovedFromProjectEvent" fields decoder


onRenamedTitleEvent : SelectionSet selection Github.Object.RenamedTitleEvent -> FragmentSelectionSet selection Github.Interface.Node
onRenamedTitleEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "RenamedTitleEvent" fields decoder


onReopenedEvent : SelectionSet selection Github.Object.ReopenedEvent -> FragmentSelectionSet selection Github.Interface.Node
onReopenedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReopenedEvent" fields decoder


onRepository : SelectionSet selection Github.Object.Repository -> FragmentSelectionSet selection Github.Interface.Node
onRepository (SelectionSet fields decoder) =
    FragmentSelectionSet "Repository" fields decoder


onRepositoryInvitation : SelectionSet selection Github.Object.RepositoryInvitation -> FragmentSelectionSet selection Github.Interface.Node
onRepositoryInvitation (SelectionSet fields decoder) =
    FragmentSelectionSet "RepositoryInvitation" fields decoder


onRepositoryTopic : SelectionSet selection Github.Object.RepositoryTopic -> FragmentSelectionSet selection Github.Interface.Node
onRepositoryTopic (SelectionSet fields decoder) =
    FragmentSelectionSet "RepositoryTopic" fields decoder


onReviewDismissalAllowance : SelectionSet selection Github.Object.ReviewDismissalAllowance -> FragmentSelectionSet selection Github.Interface.Node
onReviewDismissalAllowance (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewDismissalAllowance" fields decoder


onReviewDismissedEvent : SelectionSet selection Github.Object.ReviewDismissedEvent -> FragmentSelectionSet selection Github.Interface.Node
onReviewDismissedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewDismissedEvent" fields decoder


onReviewRequest : SelectionSet selection Github.Object.ReviewRequest -> FragmentSelectionSet selection Github.Interface.Node
onReviewRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewRequest" fields decoder


onReviewRequestRemovedEvent : SelectionSet selection Github.Object.ReviewRequestRemovedEvent -> FragmentSelectionSet selection Github.Interface.Node
onReviewRequestRemovedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewRequestRemovedEvent" fields decoder


onReviewRequestedEvent : SelectionSet selection Github.Object.ReviewRequestedEvent -> FragmentSelectionSet selection Github.Interface.Node
onReviewRequestedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewRequestedEvent" fields decoder


onStatus : SelectionSet selection Github.Object.Status -> FragmentSelectionSet selection Github.Interface.Node
onStatus (SelectionSet fields decoder) =
    FragmentSelectionSet "Status" fields decoder


onStatusContext : SelectionSet selection Github.Object.StatusContext -> FragmentSelectionSet selection Github.Interface.Node
onStatusContext (SelectionSet fields decoder) =
    FragmentSelectionSet "StatusContext" fields decoder


onSubscribedEvent : SelectionSet selection Github.Object.SubscribedEvent -> FragmentSelectionSet selection Github.Interface.Node
onSubscribedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "SubscribedEvent" fields decoder


onTag : SelectionSet selection Github.Object.Tag -> FragmentSelectionSet selection Github.Interface.Node
onTag (SelectionSet fields decoder) =
    FragmentSelectionSet "Tag" fields decoder


onTeam : SelectionSet selection Github.Object.Team -> FragmentSelectionSet selection Github.Interface.Node
onTeam (SelectionSet fields decoder) =
    FragmentSelectionSet "Team" fields decoder


onTopic : SelectionSet selection Github.Object.Topic -> FragmentSelectionSet selection Github.Interface.Node
onTopic (SelectionSet fields decoder) =
    FragmentSelectionSet "Topic" fields decoder


onTree : SelectionSet selection Github.Object.Tree -> FragmentSelectionSet selection Github.Interface.Node
onTree (SelectionSet fields decoder) =
    FragmentSelectionSet "Tree" fields decoder


onUnassignedEvent : SelectionSet selection Github.Object.UnassignedEvent -> FragmentSelectionSet selection Github.Interface.Node
onUnassignedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnassignedEvent" fields decoder


onUnlabeledEvent : SelectionSet selection Github.Object.UnlabeledEvent -> FragmentSelectionSet selection Github.Interface.Node
onUnlabeledEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnlabeledEvent" fields decoder


onUnlockedEvent : SelectionSet selection Github.Object.UnlockedEvent -> FragmentSelectionSet selection Github.Interface.Node
onUnlockedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnlockedEvent" fields decoder


onUnsubscribedEvent : SelectionSet selection Github.Object.UnsubscribedEvent -> FragmentSelectionSet selection Github.Interface.Node
onUnsubscribedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnsubscribedEvent" fields decoder


onUser : SelectionSet selection Github.Object.User -> FragmentSelectionSet selection Github.Interface.Node
onUser (SelectionSet fields decoder) =
    FragmentSelectionSet "User" fields decoder


{-| ID of the object.
-}
id : FieldDecoder String Github.Interface.Node
id =
    Object.fieldDecoder "id" [] Decode.string
