.class final Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;
.super Ljava/lang/Object;
.source "ChessBoardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/activities/ChessBoardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/activities/ChessBoardActivity;


# direct methods
.method private constructor <init>(Ljwtc/android/chess/activities/ChessBoardActivity;)V
    .locals 0

    .line 432
    iput-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljwtc/android/chess/activities/ChessBoardActivity;Ljwtc/android/chess/activities/ChessBoardActivity$1;)V
    .locals 0

    .line 432
    invoke-direct {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;-><init>(Ljwtc/android/chess/activities/ChessBoardActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 436
    instance-of v0, p1, Ljwtc/android/chess/views/ChessSquareView;

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    invoke-virtual {v0}, Ljwtc/android/chess/activities/ChessBoardActivity;->hasPremoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    invoke-virtual {p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->resetPremove()V

    goto :goto_0

    .line 440
    :cond_0
    check-cast p1, Ljwtc/android/chess/views/ChessSquareView;

    invoke-virtual {p1}, Ljwtc/android/chess/views/ChessSquareView;->getPos()I

    move-result p1

    .line 441
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iget v0, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 442
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iget v2, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    invoke-virtual {v0, v2}, Ljwtc/android/chess/activities/ChessBoardActivity;->getPieceViewOnPosition(I)Ljwtc/android/chess/views/ChessPieceView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {v0, p1}, Ljwtc/android/chess/views/ChessPieceView;->setPos(I)V

    .line 445
    iget-object v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iget-object v2, v2, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v2, v0}, Ljwtc/android/chess/views/ChessBoardView;->layoutChild(Landroid/view/View;)V

    .line 447
    :cond_1
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iget v2, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    invoke-virtual {v0, v2, p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->requestMove(II)Z

    .line 449
    :cond_2
    iget-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iput v1, p1, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    .line 450
    iget-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    invoke-virtual {p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->updateSelectedSquares()V

    :cond_3
    :goto_0
    return-void
.end method
