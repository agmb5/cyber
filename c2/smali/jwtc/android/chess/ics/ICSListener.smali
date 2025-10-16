.class public interface abstract Ljwtc/android/chess/ics/ICSListener;
.super Ljava/lang/Object;
.source "ICSListener.java"


# virtual methods
.method public abstract OnAbortConfirmed()V
.end method

.method public abstract OnAbortedOrAdjourned()V
.end method

.method public abstract OnBoardUpdated(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract OnChallenged(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract OnChatReceived()V
.end method

.method public abstract OnConsoleOutput(Ljava/lang/String;)V
.end method

.method public abstract OnError()V
.end method

.method public abstract OnExaminingGameStarted()V
.end method

.method public abstract OnExaminingGameStopped()V
.end method

.method public abstract OnGameEndedResult(I)V
.end method

.method public abstract OnGameListResult(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract OnGameNumberUpdated(I)V
.end method

.method public abstract OnIllegalMove()V
.end method

.method public abstract OnLoggingIn()V
.end method

.method public abstract OnLoginFailed(Ljava/lang/String;)V
.end method

.method public abstract OnLoginSuccess()V
.end method

.method public abstract OnObservingGameStarted()V
.end method

.method public abstract OnObservingGameStopped()V
.end method

.method public abstract OnOpponentOffersDraw()V
.end method

.method public abstract OnOpponentRequestsAbort()V
.end method

.method public abstract OnOpponentRequestsAdjourn()V
.end method

.method public abstract OnOpponentRequestsTakeBack()V
.end method

.method public abstract OnPlayGameResult(Ljava/lang/String;)V
.end method

.method public abstract OnPlayGameStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract OnPlayGameStopped()V
.end method

.method public abstract OnPlayerList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract OnPuzzleSolved()V
.end method

.method public abstract OnPuzzleStarted()V
.end method

.method public abstract OnPuzzleStopped()V
.end method

.method public abstract OnResumingAdjournedGame()V
.end method

.method public abstract OnSeekNotAvailable()V
.end method

.method public abstract OnSessionEnded()V
.end method

.method public abstract OnSoughtResult(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract OnStoredListResult(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract OnYourRequestSended()V
.end method
