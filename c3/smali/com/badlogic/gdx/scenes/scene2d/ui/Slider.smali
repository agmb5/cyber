.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    }
.end annotation


# instance fields
.field button:I

.field draggingPointer:I

.field mouseOver:Z

.field private snapValues:[F

.field private threshold:F

.field private visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v1, "vertical"

    goto :goto_0

    :cond_0
    const-string v1, "horizontal"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 6

    .line 54
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 0

    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->button:I

    .line 43
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 45
    sget-object p1, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 69
    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method


# virtual methods
.method calculatePositionAndValue(FF)Z
    .locals 8

    .line 148
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    .line 149
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 150
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    .line 153
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getMinValue()F

    move-result v3

    .line 156
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getMaxValue()F

    move-result v4

    .line 158
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->vertical:Z

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getHeight()F

    move-result p1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v5

    sub-float/2addr p1, v5

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v5

    sub-float/2addr p1, v5

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    .line 161
    :goto_0
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v5

    sub-float/2addr p2, v5

    mul-float v6, v6, v0

    sub-float/2addr p2, v6

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float/2addr v4, v3

    .line 162
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float/2addr p1, v0

    div-float/2addr v5, p1

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p2

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 163
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result p2

    invoke-static {v7, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 164
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    goto :goto_2

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getWidth()F

    move-result p2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    sub-float/2addr p2, v5

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v5

    sub-float/2addr p2, v5

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 167
    :cond_2
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    .line 168
    :goto_1
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    sub-float/2addr p1, v5

    mul-float v6, v6, v0

    sub-float/2addr p1, v6

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float/2addr v4, v3

    .line 169
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float/2addr p2, v0

    div-float/2addr v5, p2

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p1

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    .line 170
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result p1

    invoke-static {v7, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 171
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 175
    :goto_2
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 p2, 0x3b

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 p2, 0x3c

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snap(F)F

    move-result p1

    goto :goto_3

    :cond_3
    move p1, v3

    .line 176
    :goto_3
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setValue(F)Z

    move-result p2

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    .line 177
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    :cond_4
    return p2
.end method

.method protected getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2

    .line 116
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 117
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->backgroundDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->backgroundDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 119
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 120
    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobAfterDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 141
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfterDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfterDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 143
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfterOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfterOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 144
    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobBeforeDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 133
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBeforeDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBeforeDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 135
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBeforeOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBeforeOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 136
    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 125
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 127
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 128
    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    return-object v0
.end method

.method public isDragging()Z
    .locals 2

    .line 207
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOver()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    return v0
.end method

.method public setButton(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->button:I

    return-void
.end method

.method public setSnapToValues([FF)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    .line 202
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->threshold:F

    return-void
.end method

.method public setVisualInterpolationInverse(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method public setVisualPercent(F)V
    .locals 3

    .line 224
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setValue(F)Z

    return-void
.end method

.method protected snap(F)F
    .locals 7

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 185
    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 186
    aget v4, v4, v1

    sub-float v5, p1, v4

    .line 187
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 188
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->threshold:F

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_2

    cmpl-float v6, v3, v2

    if-eqz v6, :cond_1

    cmpg-float v6, v5, v3

    if-gez v6, :cond_2

    :cond_1
    move v0, v4

    move v3, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    cmpl-float v1, v3, v2

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    :cond_5
    :goto_1
    return p1
.end method
