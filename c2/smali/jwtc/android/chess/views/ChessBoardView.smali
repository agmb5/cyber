.class public Ljwtc/android/chess/views/ChessBoardView;
.super Landroid/view/ViewGroup;
.source "ChessBoardView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChessBoardView"


# instance fields
.field private rotated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Ljwtc/android/chess/views/ChessBoardView;->rotated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Ljwtc/android/chess/views/ChessBoardView;->rotated:Z

    return-void
.end method


# virtual methods
.method public invalidatePieces()V
    .locals 4

    .line 66
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessBoardView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 68
    invoke-virtual {p0, v1}, Ljwtc/android/chess/views/ChessBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 69
    instance-of v3, v2, Ljwtc/android/chess/views/ChessPieceView;

    if-eqz v3, :cond_0

    .line 70
    check-cast v2, Ljwtc/android/chess/views/ChessPieceView;

    invoke-virtual {v2}, Ljwtc/android/chess/views/ChessPieceView;->resetImageResource()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public layoutChild(Landroid/view/View;)V
    .locals 4

    .line 96
    instance-of v0, p1, Ljwtc/android/chess/views/ChessSquareView;

    if-eqz v0, :cond_0

    .line 97
    move-object v0, p1

    check-cast v0, Ljwtc/android/chess/views/ChessSquareView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessSquareView;->getPos()I

    move-result v0

    goto :goto_0

    .line 98
    :cond_0
    instance-of v0, p1, Ljwtc/android/chess/views/ChessPieceView;

    if-eqz v0, :cond_1

    .line 99
    move-object v0, p1

    check-cast v0, Ljwtc/android/chess/views/ChessPieceView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessPieceView;->getPos()I

    move-result v0

    goto :goto_0

    .line 100
    :cond_1
    move-object v0, p1

    check-cast v0, Ljwtc/android/chess/views/ChessPieceLabelView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessPieceLabelView;->getPos()I

    move-result v0

    .line 101
    :goto_0
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessBoardView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    .line 103
    iget-boolean v2, p0, Ljwtc/android/chess/views/ChessBoardView;->rotated:Z

    if-eqz v2, :cond_2

    rsub-int/lit8 v0, v0, 0x3f

    .line 104
    :cond_2
    sget-object v2, Ljwtc/chess/board/BoardConstants;->ROW:[I

    aget v2, v2, v0

    .line 105
    sget-object v3, Ljwtc/chess/board/BoardConstants;->COL:[I

    aget v0, v3, v0

    .line 107
    instance-of v3, p1, Ljwtc/android/chess/views/ChessPieceLabelView;

    if-eqz v3, :cond_3

    mul-int v0, v0, v1

    mul-int v2, v2, v1

    .line 108
    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_3
    mul-int v0, v0, v1

    mul-int v2, v2, v1

    add-int v3, v0, v1

    add-int/2addr v1, v2

    .line 110
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1
    return-void
.end method

.method protected layoutChildren()V
    .locals 5

    .line 115
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessBoardView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 118
    invoke-virtual {p0, v1}, Ljwtc/android/chess/views/ChessBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 121
    invoke-virtual {p0, v2}, Ljwtc/android/chess/views/ChessBoardView;->layoutChild(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessBoardView;->layoutChildren()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 92
    invoke-virtual {p0, p1, p1}, Ljwtc/android/chess/views/ChessBoardView;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeLabels()V
    .locals 3

    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessBoardView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 39
    invoke-virtual {p0, v0}, Ljwtc/android/chess/views/ChessBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 40
    instance-of v2, v1, Ljwtc/android/chess/views/ChessPieceLabelView;

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0, v1}, Ljwtc/android/chess/views/ChessBoardView;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removePieces()V
    .locals 3

    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessBoardView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 27
    invoke-virtual {p0, v0}, Ljwtc/android/chess/views/ChessBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 28
    instance-of v2, v1, Ljwtc/android/chess/views/ChessPieceView;

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {p0, v1}, Ljwtc/android/chess/views/ChessBoardView;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRotated(Z)V
    .locals 3

    .line 49
    sput-boolean p1, Ljwtc/android/chess/constants/ColorSchemes;->isRotated:Z

    .line 50
    iget-boolean v0, p0, Ljwtc/android/chess/views/ChessBoardView;->rotated:Z

    if-eq v0, p1, :cond_2

    .line 51
    iput-boolean p1, p0, Ljwtc/android/chess/views/ChessBoardView;->rotated:Z

    .line 52
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessBoardView;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 54
    invoke-virtual {p0, v0}, Ljwtc/android/chess/views/ChessBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 55
    instance-of v2, v1, Ljwtc/android/chess/views/ChessSquareView;

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessBoardView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
