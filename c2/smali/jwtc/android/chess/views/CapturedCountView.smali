.class public Ljwtc/android/chess/views/CapturedCountView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "CapturedCountView.java"


# instance fields
.field private piece:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 16
    iput p3, p0, Ljwtc/android/chess/views/CapturedCountView;->piece:I

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/CapturedCountView;->setWillNotDraw(Z)V

    .line 20
    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getHightlightColor()I

    move-result p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/CapturedCountView;->setTextColor(I)V

    const-string p1, ""

    if-lez p2, :cond_0

    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/CapturedCountView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Ljwtc/android/chess/views/CapturedCountView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPiece()I
    .locals 1

    .line 30
    iget v0, p0, Ljwtc/android/chess/views/CapturedCountView;->piece:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Ljwtc/android/chess/views/CapturedCountView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41000000    # 8.0f

    :goto_0
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v1, v0}, Ljwtc/android/chess/views/CapturedCountView;->setTextSize(IF)V

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
