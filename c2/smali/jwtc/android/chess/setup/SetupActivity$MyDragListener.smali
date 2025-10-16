.class public Ljwtc/android/chess/setup/SetupActivity$MyDragListener;
.super Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/setup/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/setup/SetupActivity;


# direct methods
.method protected constructor <init>(Ljwtc/android/chess/setup/SetupActivity;)V
    .locals 0

    .line 268
    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$MyDragListener;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-direct {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;-><init>(Ljwtc/android/chess/activities/ChessBoardActivity;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5

    .line 272
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 273
    instance-of v0, p1, Ljwtc/android/chess/views/ChessSquareView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 274
    check-cast p1, Ljwtc/android/chess/views/ChessSquareView;

    .line 275
    invoke-virtual {p1}, Ljwtc/android/chess/views/ChessSquareView;->getPos()I

    move-result v0

    .line 277
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    .line 279
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrag DROP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SetupActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 282
    instance-of v2, p2, Ljwtc/android/chess/views/ChessPieceView;

    if-eqz v2, :cond_6

    .line 283
    check-cast p2, Ljwtc/android/chess/views/ChessPieceView;

    .line 284
    invoke-virtual {p2}, Ljwtc/android/chess/views/ChessPieceView;->getPos()I

    move-result v2

    .line 287
    invoke-virtual {p1}, Ljwtc/android/chess/views/ChessSquareView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Ljwtc/android/chess/views/ChessBoardView;

    if-eqz p1, :cond_4

    .line 288
    iget-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$MyDragListener;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-static {p1}, Ljwtc/android/chess/setup/SetupActivity;->access$000(Ljwtc/android/chess/setup/SetupActivity;)Ljwtc/chess/JNI;

    move-result-object p1

    invoke-virtual {p1, v4, v0}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result p1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    iget-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$MyDragListener;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-static {p1}, Ljwtc/android/chess/setup/SetupActivity;->access$100(Ljwtc/android/chess/setup/SetupActivity;)Ljwtc/chess/JNI;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result p1

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_5

    .line 291
    invoke-virtual {p2}, Ljwtc/android/chess/views/ChessPieceView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Ljwtc/android/chess/views/ChessBoardView;

    if-eqz p1, :cond_3

    .line 292
    iget-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$MyDragListener;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-virtual {p1, v2}, Ljwtc/android/chess/setup/SetupActivity;->removePiece(I)V

    .line 294
    :cond_3
    iget-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$MyDragListener;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-virtual {p1, v0}, Ljwtc/android/chess/setup/SetupActivity;->removePiece(I)V

    .line 296
    iget-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$MyDragListener;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-virtual {p2}, Ljwtc/android/chess/views/ChessPieceView;->getPiece()I

    move-result v2

    invoke-virtual {p2}, Ljwtc/android/chess/views/ChessPieceView;->getColor()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Ljwtc/android/chess/setup/SetupActivity;->addPiece(III)V

    goto :goto_2

    .line 300
    :cond_4
    invoke-virtual {p2}, Ljwtc/android/chess/views/ChessPieceView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Ljwtc/android/chess/views/ChessBoardView;

    if-eqz p1, :cond_5

    .line 301
    iget-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$MyDragListener;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-virtual {p1, v2}, Ljwtc/android/chess/setup/SetupActivity;->removePiece(I)V

    .line 305
    :cond_5
    :goto_2
    iget-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$MyDragListener;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-virtual {p1}, Ljwtc/android/chess/setup/SetupActivity;->rebuildBoard()V

    .line 306
    invoke-virtual {p2, v1}, Ljwtc/android/chess/views/ChessPieceView;->setVisibility(I)V

    :cond_6
    :goto_3
    return v4

    :cond_7
    return v1
.end method
