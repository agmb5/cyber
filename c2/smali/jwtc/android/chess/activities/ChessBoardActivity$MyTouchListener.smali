.class public Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;
.super Ljava/lang/Object;
.source "ChessBoardActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/activities/ChessBoardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/activities/ChessBoardActivity;


# direct methods
.method protected constructor <init>(Ljwtc/android/chess/activities/ChessBoardActivity;)V
    .locals 0

    .line 526
    iput-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 528
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    invoke-virtual {v0}, Ljwtc/android/chess/activities/ChessBoardActivity;->hasPremoved()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 529
    iget-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;->this$0:Ljwtc/android/chess/activities/ChessBoardActivity;

    invoke-virtual {p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->resetPremove()V

    goto :goto_0

    .line 530
    :cond_0
    instance-of v0, p1, Ljwtc/android/chess/views/ChessPieceView;

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string p2, ""

    .line 534
    invoke-static {p2, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 535
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 536
    invoke-virtual {p1, p2, v0, p1, v1}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 p2, 0x4

    .line 537
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return v2

    .line 539
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 542
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v2

    :cond_2
    :goto_0
    return v1
.end method
