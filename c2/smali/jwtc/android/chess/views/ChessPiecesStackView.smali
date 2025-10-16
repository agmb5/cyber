.class public Ljwtc/android/chess/views/ChessPiecesStackView;
.super Landroid/view/ViewGroup;
.source "ChessPiecesStackView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChessPiecesStackView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public invalidatePieces()V
    .locals 4

    .line 21
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessPiecesStackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 23
    invoke-virtual {p0, v1}, Ljwtc/android/chess/views/ChessPiecesStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 24
    instance-of v3, v2, Ljwtc/android/chess/views/ChessPieceView;

    if-eqz v3, :cond_0

    .line 25
    check-cast v2, Ljwtc/android/chess/views/ChessPieceView;

    invoke-virtual {v2}, Ljwtc/android/chess/views/ChessPieceView;->resetImageResource()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public layoutChild(Landroid/view/View;II)V
    .locals 2

    mul-int p2, p2, p3

    add-int v0, p2, p3

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, p2, v1, v0, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessPiecesStackView;->getChildCount()I

    move-result p1

    .line 41
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessPiecesStackView;->getHeight()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_3

    .line 44
    invoke-virtual {p0, p3}, Ljwtc/android/chess/views/ChessPiecesStackView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 46
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_2

    .line 47
    instance-of p5, p4, Ljwtc/android/chess/views/ChessSquareView;

    if-eqz p5, :cond_0

    .line 48
    move-object p5, p4

    check-cast p5, Ljwtc/android/chess/views/ChessSquareView;

    invoke-virtual {p5}, Ljwtc/android/chess/views/ChessSquareView;->getPos()I

    move-result p5

    goto :goto_1

    .line 49
    :cond_0
    instance-of p5, p4, Ljwtc/android/chess/views/ChessPieceView;

    if-eqz p5, :cond_1

    .line 50
    move-object p5, p4

    check-cast p5, Ljwtc/android/chess/views/ChessPieceView;

    invoke-virtual {p5}, Ljwtc/android/chess/views/ChessPieceView;->getPos()I

    move-result p5

    goto :goto_1

    .line 51
    :cond_1
    move-object p5, p4

    check-cast p5, Ljwtc/android/chess/views/CapturedCountView;

    invoke-virtual {p5}, Ljwtc/android/chess/views/CapturedCountView;->getPiece()I

    move-result p5

    .line 52
    :goto_1
    invoke-virtual {p0, p4, p5, p2}, Ljwtc/android/chess/views/ChessPiecesStackView;->layoutChild(Landroid/view/View;II)V

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 60
    div-int/lit8 p2, p1, 0x5

    .line 61
    invoke-virtual {p0, p1, p2}, Ljwtc/android/chess/views/ChessPiecesStackView;->setMeasuredDimension(II)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
