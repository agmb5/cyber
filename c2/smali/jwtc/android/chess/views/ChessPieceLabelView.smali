.class public Ljwtc/android/chess/views/ChessPieceLabelView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ChessPieceLabelView.java"


# instance fields
.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 18
    iput p2, p0, Ljwtc/android/chess/views/ChessPieceLabelView;->position:I

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/ChessPieceLabelView;->setWillNotDraw(Z)V

    const/16 p1, 0x11

    .line 21
    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/ChessPieceLabelView;->setGravity(I)V

    if-nez p3, :cond_0

    const/4 p1, -0x1

    .line 24
    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/ChessPieceLabelView;->setTextColor(I)V

    const p1, 0x7f070194

    .line 25
    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/ChessPieceLabelView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f070195

    .line 27
    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/ChessPieceLabelView;->setBackgroundResource(I)V

    const/high16 p1, -0x1000000

    .line 28
    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/ChessPieceLabelView;->setTextColor(I)V

    .line 30
    :goto_0
    invoke-virtual {p0, p4}, Ljwtc/android/chess/views/ChessPieceLabelView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 1

    .line 34
    iget v0, p0, Ljwtc/android/chess/views/ChessPieceLabelView;->position:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Ljwtc/android/chess/views/ChessPieceLabelView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41000000    # 8.0f

    :goto_0
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v1, v0}, Ljwtc/android/chess/views/ChessPieceLabelView;->setTextSize(IF)V

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
