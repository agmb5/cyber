.class public Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
.source "TiledDrawable.java"


# instance fields
.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 28
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 27
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 28
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    .line 27
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 28
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 43
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getPackedColor()F

    move-result v12

    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    .line 47
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    mul-float v14, v1, v2

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    mul-float v15, v1, v2

    div-float v1, p4, v14

    float-to-int v10, v1

    div-float v1, p5, v15

    float-to-int v9, v1

    int-to-float v1, v10

    mul-float v1, v1, v14

    sub-float v16, p4, v1

    int-to-float v1, v9

    mul-float v1, v1, v15

    sub-float v17, p5, v1

    const/16 v18, 0x0

    move/from16 v19, p2

    move/from16 v1, p3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v10, :cond_1

    move/from16 v8, p3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v3, v19

    move v4, v8

    move v5, v14

    move/from16 v20, v6

    move v6, v15

    .line 55
    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-float/2addr v8, v15

    add-int/lit8 v6, v20, 0x1

    goto :goto_1

    :cond_0
    add-float v19, v19, v14

    add-int/lit8 v7, v7, 0x1

    move v1, v8

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v20

    .line 61
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v21

    .line 62
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v2, v16, v23

    if-lez v2, :cond_3

    .line 65
    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    mul-float v1, v1, v2

    div-float v1, v16, v1

    add-float v24, v21, v1

    .line 66
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v25

    move/from16 v26, p3

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v26

    move/from16 v5, v16

    move v6, v15

    move/from16 v7, v21

    move/from16 v27, v8

    move/from16 v8, v22

    move/from16 v28, v9

    move/from16 v9, v24

    move v11, v10

    move/from16 v10, v25

    .line 69
    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v26, v26, v15

    add-int/lit8 v8, v27, 0x1

    move v10, v11

    move/from16 v9, v28

    move-object/from16 v11, p1

    goto :goto_2

    :cond_2
    move v11, v10

    cmpl-float v1, v17, v23

    if-lez v1, :cond_4

    .line 74
    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    mul-float v1, v1, v2

    div-float v1, v17, v1

    sub-float v10, v22, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v26

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v24

    .line 75
    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_3

    :cond_3
    move v11, v10

    move/from16 v26, v1

    :cond_4
    :goto_3
    cmpl-float v1, v17, v23

    if-lez v1, :cond_5

    .line 80
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v13

    .line 81
    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    mul-float v1, v1, v2

    div-float v1, v17, v1

    sub-float v15, v22, v1

    move/from16 v16, p2

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_5

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v16

    move/from16 v4, v26

    move v5, v14

    move/from16 v6, v17

    move/from16 v7, v21

    move/from16 v8, v22

    move v9, v13

    move/from16 v18, v10

    move v10, v15

    .line 84
    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v16, v16, v14

    add-int/lit8 v10, v18, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v1, p1

    .line 89
    invoke-interface {v1, v12}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setPackedColor(F)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .locals 0

    .line 94
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    return v0
.end method

.method public setScale(F)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    return-void
.end method

.method public bridge synthetic tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    move-result-object p1

    return-object p1
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    .locals 2

    .line 110
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    .line 111
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getLeftWidth()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setLeftWidth(F)V

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRightWidth()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setRightWidth(F)V

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getTopHeight()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setTopHeight(F)V

    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getBottomHeight()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setBottomHeight(F)V

    return-object v0
.end method
