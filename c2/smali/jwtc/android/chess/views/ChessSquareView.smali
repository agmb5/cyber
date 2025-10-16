.class public Ljwtc/android/chess/views/ChessSquareView;
.super Landroid/view/View;
.source "ChessSquareView.java"


# static fields
.field public static bitmapPattern:Landroid/graphics/Bitmap;

.field private static highlightPaint:Landroid/graphics/Paint;

.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private highlighted:Z

.field private pos:I

.field private selected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ljwtc/android/chess/views/ChessSquareView;->highlightPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 23
    sput-object v0, Ljwtc/android/chess/views/ChessSquareView;->bitmapPattern:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    iput p2, p0, Ljwtc/android/chess/views/ChessSquareView;->pos:I

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Ljwtc/android/chess/views/ChessSquareView;->selected:Z

    .line 29
    iput-boolean p1, p0, Ljwtc/android/chess/views/ChessSquareView;->highlighted:Z

    return-void
.end method


# virtual methods
.method public getHighlighted()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Ljwtc/android/chess/views/ChessSquareView;->highlighted:Z

    return v0
.end method

.method public getPos()I
    .locals 1

    .line 33
    iget v0, p0, Ljwtc/android/chess/views/ChessSquareView;->pos:I

    return v0
.end method

.method public getSelected()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Ljwtc/android/chess/views/ChessSquareView;->selected:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 66
    iget-boolean v0, p0, Ljwtc/android/chess/views/ChessSquareView;->selected:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getSelectedColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 69
    :cond_0
    iget v0, p0, Ljwtc/android/chess/views/ChessSquareView;->pos:I

    and-int/lit8 v3, v0, 0x1

    shr-int/lit8 v0, v0, 0x3

    and-int/2addr v0, v2

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 70
    :goto_1
    sget-object v3, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    if-ne v0, v2, :cond_4

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getLight()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getDark()I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    :goto_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessSquareView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessSquareView;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v3, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 74
    sget-object v0, Ljwtc/android/chess/views/ChessSquareView;->bitmapPattern:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 75
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessSquareView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Ljwtc/android/chess/views/ChessSquareView;->bitmapPattern:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 76
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 77
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 78
    sget-object v0, Ljwtc/android/chess/views/ChessSquareView;->bitmapPattern:Landroid/graphics/Bitmap;

    sget-object v4, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 81
    :cond_5
    sget-boolean v0, Ljwtc/android/chess/constants/ColorSchemes;->showCoords:Z

    if-eqz v0, :cond_f

    .line 83
    iget v0, p0, Ljwtc/android/chess/views/ChessSquareView;->pos:I

    const/16 v3, 0x37

    if-le v0, v3, :cond_6

    .line 84
    invoke-static {v0}, Ljwtc/chess/Pos;->colToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 86
    :cond_6
    rem-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_7

    .line 87
    invoke-static {v0}, Ljwtc/chess/Pos;->rowToString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    const-string v0, ""

    .line 90
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 91
    sget-boolean v3, Ljwtc/android/chess/constants/ColorSchemes;->isRotated:Z

    .line 92
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessSquareView;->getHeight()I

    move-result v4

    const/16 v5, 0x3c

    if-le v4, v5, :cond_8

    .line 93
    div-int/lit8 v5, v4, 0x5

    goto :goto_5

    :cond_8
    const/16 v5, 0xa

    .line 95
    :goto_5
    sget-object v6, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 96
    sget-object v2, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    const v6, -0x66000001

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    if-eqz v3, :cond_9

    sub-int v6, v4, v5

    int-to-float v6, v6

    move v8, v6

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    if-eqz v3, :cond_a

    const/4 v9, 0x0

    goto :goto_7

    :cond_a
    sub-int v2, v4, v5

    int-to-float v2, v2

    move v9, v2

    :goto_7
    if-eqz v3, :cond_b

    int-to-float v2, v4

    goto :goto_8

    :cond_b
    int-to-float v2, v5

    :goto_8
    move v10, v2

    if-eqz v3, :cond_c

    int-to-float v2, v5

    goto :goto_9

    :cond_c
    int-to-float v2, v4

    :goto_9
    move v11, v2

    .line 101
    sget-object v12, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    move-object v7, p1

    .line 97
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    sget-object v2, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    const/high16 v6, -0x67000000

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    sget-object v2, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    add-int/lit8 v6, v5, -0x4

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v3, :cond_d

    sub-int v2, v4, v5

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    goto :goto_a

    :cond_d
    const/high16 v2, 0x40800000    # 4.0f

    :goto_a
    if-eqz v3, :cond_e

    goto :goto_b

    :cond_e
    add-int/lit8 v4, v4, -0x4

    int-to-float v6, v4

    .line 105
    :goto_b
    sget-object v3, Ljwtc/android/chess/views/ChessSquareView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    :cond_f
    iget-boolean v0, p0, Ljwtc/android/chess/views/ChessSquareView;->highlighted:Z

    if-eqz v0, :cond_10

    .line 110
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessSquareView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 111
    sget-object v2, Ljwtc/android/chess/views/ChessSquareView;->highlightPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    sget-object v2, Ljwtc/android/chess/views/ChessSquareView;->highlightPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    sget-object v0, Ljwtc/android/chess/views/ChessSquareView;->highlightPaint:Landroid/graphics/Paint;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getHightlightColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessSquareView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessSquareView;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Ljwtc/android/chess/views/ChessSquareView;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_10
    return-void
.end method

.method public setHighlighted(Z)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Ljwtc/android/chess/views/ChessSquareView;->highlighted:Z

    if-eq v0, p1, :cond_0

    .line 56
    iput-boolean p1, p0, Ljwtc/android/chess/views/ChessSquareView;->highlighted:Z

    .line 57
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessSquareView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPos(I)V
    .locals 1

    .line 37
    iget v0, p0, Ljwtc/android/chess/views/ChessSquareView;->pos:I

    if-eq v0, p1, :cond_0

    .line 38
    iput p1, p0, Ljwtc/android/chess/views/ChessSquareView;->pos:I

    .line 39
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessSquareView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 44
    iget-boolean v0, p0, Ljwtc/android/chess/views/ChessSquareView;->selected:Z

    if-eq v0, p1, :cond_0

    .line 45
    iput-boolean p1, p0, Ljwtc/android/chess/views/ChessSquareView;->selected:Z

    .line 46
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessSquareView;->invalidate()V

    :cond_0
    return-void
.end method
