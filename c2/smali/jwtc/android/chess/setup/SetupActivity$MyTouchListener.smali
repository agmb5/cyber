.class public Ljwtc/android/chess/setup/SetupActivity$MyTouchListener;
.super Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/setup/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/setup/SetupActivity;


# direct methods
.method protected constructor <init>(Ljwtc/android/chess/setup/SetupActivity;)V
    .locals 0

    .line 319
    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$MyTouchListener;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-direct {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;-><init>(Ljwtc/android/chess/activities/ChessBoardActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 321
    instance-of v0, p1, Ljwtc/android/chess/views/ChessPieceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 322
    move-object v0, p1

    check-cast v0, Ljwtc/android/chess/views/ChessPieceView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessPieceView;->getPos()I

    move-result v0

    .line 324
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-string v3, "SetupActivity"

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch DOWN "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ""

    .line 327
    invoke-static {p2, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 328
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 329
    invoke-virtual {p1, p2, v0, p1, v1}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 p2, 0x4

    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return v4

    .line 332
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v4, :cond_1

    .line 333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch UP "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v4

    :cond_1
    return v1
.end method
