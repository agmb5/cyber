.class public Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;
.super Ljava/lang/Object;
.source "ChessBoardActivity.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/activities/ChessBoardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/activities/ChessBoardActivity;


# direct methods
.method protected constructor <init>(Ljwtc/android/chess/activities/ChessBoardActivity;)V
    .locals 0

    .line 456
    iput-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    .line 460
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 461
    instance-of v0, p1, Ljwtc/android/chess/views/ChessSquareView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 462
    move-object v0, p1

    check-cast v0, Ljwtc/android/chess/views/ChessSquareView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessSquareView;->getPos()I

    .line 464
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2

    const/4 p2, 0x5

    if-eq v2, p2, :cond_1

    const/4 p2, 0x6

    if-eq v2, p2, :cond_0

    goto/16 :goto_1

    .line 471
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_1

    .line 467
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_1

    .line 506
    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7

    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_7

    .line 508
    new-instance p2, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener$1;

    invoke-direct {p2, p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener$1;-><init>(Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 476
    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 477
    instance-of p2, p1, Ljwtc/android/chess/views/ChessPieceView;

    if-eqz p2, :cond_6

    .line 478
    move-object p2, p1

    check-cast p2, Ljwtc/android/chess/views/ChessPieceView;

    .line 479
    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessSquareView;->getPos()I

    move-result v0

    .line 480
    invoke-virtual {p2}, Ljwtc/android/chess/views/ChessPieceView;->getPos()I

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v2, :cond_5

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iget v5, v5, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ChessBoardActivity"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iget v2, v2, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    if-eq v2, v3, :cond_4

    .line 486
    invoke-virtual {p2, v0}, Ljwtc/android/chess/views/ChessPieceView;->setPos(I)V

    .line 487
    iget-object v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iget-object v2, v2, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v2, p2}, Ljwtc/android/chess/views/ChessBoardView;->layoutChild(Landroid/view/View;)V

    .line 488
    iget-object p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iget v2, p2, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    invoke-virtual {p2, v2, v0}, Ljwtc/android/chess/activities/ChessBoardActivity;->requestMove(II)Z

    .line 489
    iget-object p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iput v3, p2, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    goto :goto_0

    .line 491
    :cond_4
    iget-object p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iput v0, p2, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    goto :goto_0

    .line 494
    :cond_5
    invoke-virtual {p2, v0}, Ljwtc/android/chess/views/ChessPieceView;->setPos(I)V

    .line 495
    iget-object v5, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iget-object v5, v5, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v5, p2}, Ljwtc/android/chess/views/ChessBoardView;->layoutChild(Landroid/view/View;)V

    .line 496
    iget-object p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    invoke-virtual {p2, v2, v0}, Ljwtc/android/chess/activities/ChessBoardActivity;->requestMove(II)Z

    .line 497
    iget-object p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    iput v3, p2, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    .line 499
    :goto_0
    iget-object p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    invoke-virtual {p2}, Ljwtc/android/chess/activities/ChessBoardActivity;->updateSelectedSquares()V

    .line 501
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_1
    return v4

    :cond_8
    return v1
.end method
