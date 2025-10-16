.class public Ljwtc/android/chess/views/ChessPieceView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ChessPieceView.java"


# instance fields
.field private color:I

.field private piece:I

.field private pos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/ChessPieceView;->setFocusable(Z)V

    .line 23
    iput p4, p0, Ljwtc/android/chess/views/ChessPieceView;->pos:I

    .line 24
    iput p3, p0, Ljwtc/android/chess/views/ChessPieceView;->piece:I

    .line 25
    iput p2, p0, Ljwtc/android/chess/views/ChessPieceView;->color:I

    .line 27
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessPieceView;->setMyImageResource()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 39
    iget v0, p0, Ljwtc/android/chess/views/ChessPieceView;->color:I

    return v0
.end method

.method public getPiece()I
    .locals 1

    .line 35
    iget v0, p0, Ljwtc/android/chess/views/ChessPieceView;->piece:I

    return v0
.end method

.method public getPos()I
    .locals 1

    .line 31
    iget v0, p0, Ljwtc/android/chess/views/ChessPieceView;->pos:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessPieceView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMeasure"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Piece"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0, p1, p1}, Ljwtc/android/chess/views/ChessPieceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public promote(I)V
    .locals 0

    .line 50
    iput p1, p0, Ljwtc/android/chess/views/ChessPieceView;->piece:I

    .line 51
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessPieceView;->resetImageResource()V

    return-void
.end method

.method public resetImageResource()V
    .locals 0

    .line 66
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessPieceView;->setMyImageResource()V

    .line 67
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessPieceView;->invalidate()V

    return-void
.end method

.method protected setMyImageResource()V
    .locals 2

    .line 71
    sget v0, Ljwtc/android/chess/constants/PieceSets;->selectedBlindfoldMode:I

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Ljwtc/android/chess/constants/PieceSets;->PIECES:[[[I

    sget v1, Ljwtc/android/chess/constants/PieceSets;->selectedSet:I

    aget-object v0, v0, v1

    iget v1, p0, Ljwtc/android/chess/views/ChessPieceView;->color:I

    aget-object v0, v0, v1

    iget v1, p0, Ljwtc/android/chess/views/ChessPieceView;->piece:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Ljwtc/android/chess/views/ChessPieceView;->setImageResource(I)V

    goto :goto_1

    .line 73
    :cond_0
    sget v0, Ljwtc/android/chess/constants/PieceSets;->selectedBlindfoldMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 74
    iget v0, p0, Ljwtc/android/chess/views/ChessPieceView;->color:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7f070195

    goto :goto_0

    :cond_1
    const v0, 0x7f070194

    :goto_0
    invoke-virtual {p0, v0}, Ljwtc/android/chess/views/ChessPieceView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const v0, 0x106000d

    .line 76
    invoke-virtual {p0, v0}, Ljwtc/android/chess/views/ChessPieceView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public setPos(I)V
    .locals 1

    .line 43
    iget v0, p0, Ljwtc/android/chess/views/ChessPieceView;->pos:I

    if-eq v0, p1, :cond_0

    .line 44
    iput p1, p0, Ljwtc/android/chess/views/ChessPieceView;->pos:I

    .line 45
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessPieceView;->invalidate()V

    :cond_0
    return-void
.end method
