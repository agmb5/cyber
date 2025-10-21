.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "ProgressBar.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    }
.end annotation


# instance fields
.field private animateDuration:F

.field private animateFromValue:F

.field private animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

.field private animateTime:F

.field disabled:Z

.field max:F

.field min:F

.field position:F

.field private programmaticChangeEvents:Z

.field private round:Z

.field stepSize:F

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

.field private value:F

.field final vertical:Z

.field private visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 51
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->programmaticChangeEvents:Z

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    .line 76
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 77
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    .line 78
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    .line 79
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    .line 80
    iput-boolean p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    .line 81
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 82
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setSize(FF)V

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "stepSize must be > 0: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "max must be > min. min,max: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6

    .line 56
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

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 6

    .line 60
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->act(F)V

    .line 99
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sub-float/2addr v0, p1

    .line 100
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    .line 101
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_0
    return-void
.end method

.method protected clamp(F)F
    .locals 2

    .line 326
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 21

    move-object/from16 v0, p0

    .line 107
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 109
    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v9

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getKnobBeforeDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v10

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getKnobAfterDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v11

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getY()F

    move-result v13

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getWidth()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getHeight()F

    move-result v15

    const/16 v16, 0x0

    if-nez v1, :cond_0

    const/16 v17, 0x0

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    move/from16 v17, v4

    :goto_0
    if-nez v1, :cond_1

    const/16 v18, 0x0

    goto :goto_1

    .line 118
    :cond_1
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    move/from16 v18, v4

    .line 119
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualPercent()F

    move-result v19

    .line 121
    iget v4, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    move-object/from16 v8, p1

    invoke-interface {v8, v4, v5, v6, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 123
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    const/high16 v20, 0x3f000000    # 0.5f

    if-eqz v3, :cond_b

    if-eqz v9, :cond_3

    .line 128
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v3, :cond_2

    .line 129
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    sub-float v3, v14, v3

    mul-float v3, v3, v20

    add-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v5, v3

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v7, v3

    move-object v3, v9

    move-object/from16 v4, p1

    move v6, v13

    move v8, v15

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_2

    .line 131
    :cond_2
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    sub-float v3, v14, v3

    mul-float v3, v3, v20

    add-float v5, v12, v3

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    move-object v3, v9

    move-object/from16 v4, p1

    move v6, v13

    move v8, v15

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 132
    :goto_2
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    .line 133
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v4

    add-float v5, v3, v4

    sub-float v5, v15, v5

    move v9, v4

    goto :goto_3

    :cond_3
    move v5, v15

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_3
    if-nez v1, :cond_5

    if-nez v10, :cond_4

    goto :goto_4

    .line 139
    :cond_4
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    mul-float v16, v1, v20

    :goto_4
    sub-float v5, v5, v16

    mul-float v1, v5, v19

    .line 140
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 141
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    goto :goto_5

    :cond_5
    mul-float v16, v17, v20

    sub-float v5, v5, v17

    mul-float v1, v5, v19

    .line 144
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 145
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v9

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 147
    :goto_5
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    if-eqz v10, :cond_7

    .line 150
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v1, :cond_6

    .line 151
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    sub-float v1, v14, v1

    mul-float v1, v1, v20

    add-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v5, v1

    add-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    .line 152
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v7, v1

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v1, v1, v16

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v8, v1

    move-object v3, v10

    move-object/from16 v4, p1

    .line 151
    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_6

    .line 154
    :cond_6
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    sub-float v1, v14, v1

    mul-float v1, v1, v20

    add-float v5, v12, v1

    add-float v6, v13, v3

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v8, v1, v16

    move-object v3, v10

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_7
    :goto_6
    if-eqz v11, :cond_9

    .line 159
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v1, :cond_8

    .line 160
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    sub-float v1, v14, v1

    mul-float v1, v1, v20

    add-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v1, v13

    add-float v1, v1, v16

    .line 161
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v7, v1

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float/2addr v15, v1

    sub-float v15, v15, v16

    sub-float/2addr v15, v9

    .line 162
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v8, v1

    move-object v3, v11

    move-object/from16 v4, p1

    .line 160
    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_7

    .line 164
    :cond_8
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    sub-float v1, v14, v1

    mul-float v1, v1, v20

    add-float v5, v12, v1

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v1, v13

    add-float v6, v1, v16

    .line 165
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float/2addr v15, v1

    sub-float v15, v15, v16

    sub-float v8, v15, v9

    move-object v3, v11

    move-object/from16 v4, p1

    .line 164
    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_9
    :goto_7
    if-eqz v2, :cond_15

    .line 169
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    sub-float/2addr v14, v1

    mul-float v14, v14, v20

    add-float/2addr v12, v14

    sub-float v17, v17, v3

    mul-float v17, v17, v20

    .line 171
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v17, v17, v4

    add-float v13, v13, v17

    .line 172
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v4, :cond_a

    .line 173
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    .line 174
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 175
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 176
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    move v6, v1

    move v7, v3

    goto :goto_8

    :cond_a
    move v6, v1

    move v7, v3

    move v4, v12

    move v5, v13

    :goto_8
    move-object/from16 v3, p1

    .line 178
    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto/16 :goto_10

    :cond_b
    if-eqz v9, :cond_d

    .line 185
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v3, :cond_c

    .line 186
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    sub-float v3, v15, v3

    mul-float v3, v3, v20

    add-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v3

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v8, v3

    move-object v3, v9

    move-object/from16 v4, p1

    move v5, v12

    move v7, v14

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_9

    .line 188
    :cond_c
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    sub-float v3, v15, v3

    mul-float v3, v3, v20

    add-float v6, v13, v3

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    move-object v3, v9

    move-object/from16 v4, p1

    move v5, v12

    move v7, v14

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 189
    :goto_9
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    .line 190
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v4

    add-float v5, v3, v4

    sub-float v5, v14, v5

    move v9, v4

    goto :goto_a

    :cond_d
    move v5, v14

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_a
    if-nez v1, :cond_f

    if-nez v10, :cond_e

    goto :goto_b

    .line 196
    :cond_e
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    mul-float v16, v1, v20

    :goto_b
    sub-float v5, v5, v16

    mul-float v1, v5, v19

    .line 197
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 198
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    goto :goto_c

    :cond_f
    mul-float v16, v18, v20

    sub-float v5, v5, v18

    mul-float v1, v5, v19

    .line 201
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 202
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 204
    :goto_c
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    if-eqz v10, :cond_11

    .line 207
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v1, :cond_10

    add-float/2addr v3, v12

    .line 208
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v5, v1

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v1, v15, v1

    mul-float v1, v1, v20

    add-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v1, v1, v16

    .line 209
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v7, v1

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v8, v1

    move-object v3, v10

    move-object/from16 v4, p1

    .line 208
    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_d

    :cond_10
    add-float v5, v12, v3

    .line 211
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v1, v15, v1

    mul-float v1, v1, v20

    add-float v6, v13, v1

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v7, v1, v16

    .line 212
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    move-object v3, v10

    move-object/from16 v4, p1

    .line 211
    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_11
    :goto_d
    if-eqz v11, :cond_13

    .line 216
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v1, :cond_12

    .line 217
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v1, v12

    add-float v1, v1, v16

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v5, v1

    .line 218
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v1, v15, v1

    mul-float v1, v1, v20

    add-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float/2addr v14, v1

    sub-float v14, v14, v16

    sub-float/2addr v14, v9

    .line 219
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v7, v1

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v8, v1

    move-object v3, v11

    move-object/from16 v4, p1

    .line 217
    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_e

    .line 221
    :cond_12
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v1, v12

    add-float v5, v1, v16

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v1, v15, v1

    mul-float v1, v1, v20

    add-float v6, v13, v1

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    sub-float/2addr v14, v1

    sub-float v14, v14, v16

    sub-float v7, v14, v9

    .line 222
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    move-object v3, v11

    move-object/from16 v4, p1

    .line 221
    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_13
    :goto_e
    if-eqz v2, :cond_15

    .line 226
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    sub-float v18, v18, v1

    mul-float v18, v18, v20

    .line 227
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v18, v18, v4

    add-float v12, v12, v18

    sub-float/2addr v15, v3

    mul-float v15, v15, v20

    add-float/2addr v13, v15

    .line 229
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    if-eqz v4, :cond_14

    .line 230
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    .line 231
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 232
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 233
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    move v6, v1

    move v7, v3

    goto :goto_f

    :cond_14
    move v6, v1

    move v7, v3

    move v4, v12

    move v5, v13

    :goto_f
    move-object/from16 v3, p1

    .line 235
    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_15
    :goto_10
    return-void
.end method

.method protected getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobAfterDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobBeforeDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method protected getKnobPosition()F
    .locals 1

    .line 287
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 367
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 363
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    return v0
.end method

.method public getPercent()F
    .locals 3

    .line 256
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 257
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    sub-float/2addr v2, v0

    sub-float/2addr v1, v0

    div-float/2addr v2, v1

    return v2
.end method

.method public getPrefHeight()F
    .locals 3

    .line 354
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x430c0000    # 140.0f

    return v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 358
    :cond_1
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getPrefWidth()F
    .locals 3

    .line 346
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :cond_0
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_2
    const/high16 v0, 0x430c0000    # 140.0f

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 371
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 241
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    return v0
.end method

.method public getVisualPercent()F
    .locals 4

    .line 261
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    return v0
.end method

.method public getVisualValue()F
    .locals 6

    .line 246
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateFromValue:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    return v0

    .line 247
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    return v0
.end method

.method public isAnimating()Z
    .locals 2

    .line 400
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    return v0
.end method

.method protected round(F)F
    .locals 1

    .line 320
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    mul-float p1, p1, v0

    return p1
.end method

.method public setAnimateDuration(F)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    return-void
.end method

.method public setAnimateInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 382
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-void

    .line 381
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "animateInterpolation cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 396
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->programmaticChangeEvents:Z

    return-void
.end method

.method public setRange(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 332
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    .line 333
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    .line 334
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    .line 335
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    goto :goto_0

    :cond_0
    cmpl-float p1, v0, p2

    if-lez p1, :cond_1

    .line 337
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    :cond_1
    :goto_0
    return-void

    .line 331
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min must be <= max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " <= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRound(Z)V
    .locals 0

    .line 392
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round:Z

    return-void
.end method

.method public setStepSize(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 342
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    return-void

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "steps must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->invalidateHierarchy()V

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(F)Z
    .locals 4

    .line 295
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->round(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->clamp(F)F

    move-result p1

    .line 296
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    return v1

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v2

    .line 299
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 301
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->programmaticChangeEvents:Z

    if-eqz p1, :cond_1

    .line 302
    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 303
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v3

    .line 304
    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    .line 306
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    return v1

    .line 311
    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 312
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateFromValue:F

    .line 313
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setVisualInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method public updateVisualValue()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    return-void
.end method
