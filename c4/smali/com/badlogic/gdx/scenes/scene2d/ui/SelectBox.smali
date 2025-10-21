.class public Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SelectBox.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;"
    }
.end annotation


# static fields
.field static final temp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private alignment:I

.field private clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field disabled:Z

.field final items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field private prefHeight:F

.field private prefWidth:F

.field selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<",
            "TT;>;"
        }
    .end annotation
.end field

.field selectedPrefWidth:Z

.field final selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<",
            "TT;>;"
        }
    .end annotation
.end field

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->temp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    .line 65
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->alignment:I

    .line 68
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;

    invoke-direct {v1, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/badlogic/gdx/utils/Array;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    .line 84
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    .line 85
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSize(FF)V

    .line 87
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, 0x1

    .line 88
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->setRequired(Z)V

    .line 90
    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    .line 92
    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    .line 76
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    .line 80
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    return-void
.end method


# virtual methods
.method public clearItems()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    .line 172
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 15

    move-object v7, p0

    .line 240
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->validate()V

    .line 242
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v6

    .line 243
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getFontColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    .line 244
    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 246
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getY()F

    move-result v11

    .line 248
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getWidth()F

    move-result v12

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getHeight()F

    move-result v13

    .line 250
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    move-object/from16 v14, p1

    invoke-interface {v14, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    if-eqz v6, :cond_0

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    .line 251
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 253
    :cond_0
    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->first()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v6, :cond_1

    .line 256
    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v1

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v12, v1

    .line 257
    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v1

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v13, v1

    .line 258
    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v1

    add-float/2addr v10, v1

    div-float/2addr v13, v0

    .line 259
    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v1

    add-float/2addr v13, v1

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    goto :goto_0

    :cond_1
    div-float/2addr v13, v0

    .line 261
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    :goto_0
    div-float/2addr v1, v0

    add-float/2addr v13, v1

    float-to-int v0, v13

    int-to-float v0, v0

    add-float/2addr v11, v0

    move v4, v10

    move v5, v11

    move v6, v12

    .line 263
    iget v0, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v8, v8, p2

    invoke-virtual {v9, v0, v1, v2, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    .line 264
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->drawItem(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/Object;FFF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    :cond_2
    return-void
.end method

.method protected drawItem(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/Object;FFF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            "TT;FFF)",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    .line 269
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->alignment:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v11, "..."

    move-object v1, p2

    move-object v2, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v1

    return-object v1
.end method

.method protected getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOpen:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOpen:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->isOver()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getClickListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    return-object v0
.end method

.method protected getFontColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->isOver()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getItems()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getList()Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/List<",
            "TT;>;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    return-object v0
.end method

.method public getMaxListCount()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->maxListCount:I

    return v0
.end method

.method public getMaxSelectedPrefWidth()F
    .locals 5

    .line 320
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 323
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 325
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    .line 328
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_1
    return v1
.end method

.method public getPrefHeight()F
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->validate()V

    .line 348
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->validate()V

    .line 343
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    return v0
.end method

.method public getScrollPane()Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    return-object v0
.end method

.method public getSelected()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v0

    .line 304
    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->first()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSelection()Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<",
            "TT;>;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    return-object v0
.end method

.method public hideList()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hide()V

    return-void
.end method

.method public isDisabled()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->disabled:Z

    return v0
.end method

.method public isOver()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver()Z

    move-result v0

    return v0
.end method

.method public layout()V
    .locals 8

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 182
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    mul-float v4, v4, v2

    sub-float/2addr v3, v4

    .line 186
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    .line 185
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefHeight:F

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    mul-float v4, v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefHeight:F

    .line 190
    :goto_0
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 192
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectedPrefWidth:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 193
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    if-eqz v0, :cond_1

    .line 194
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v4

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    add-float/2addr v4, v0

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 197
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 198
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    iget v1, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    goto/16 :goto_3

    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 202
    :goto_1
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v7, :cond_3

    .line 203
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 204
    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 207
    :cond_3
    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    if-eqz v0, :cond_4

    .line 208
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v1

    add-float/2addr v1, v6

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v4

    add-float/2addr v1, v4

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .line 211
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .line 212
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v4

    add-float/2addr v6, v4

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    add-float/2addr v6, v0

    .line 213
    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_5

    .line 214
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v1

    add-float/2addr v6, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v1

    add-float/2addr v6, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->disableY:Z

    if-nez v0, :cond_9

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 217
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    .line 216
    :cond_8
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v6, v0

    .line 219
    :cond_9
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    .line 221
    :cond_a
    :goto_3
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method protected onHide(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    .line 394
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 395
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method protected onShow(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 1

    .line 389
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    const/4 v0, 0x0

    iput v0, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 390
    sget-object p2, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    const v0, 0x3e99999a    # 0.3f

    invoke-static {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public setAlignment(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->alignment:I

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 333
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->disabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->hideList()V

    .line 334
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->disabled:Z

    return-void
.end method

.method public setItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    if-eq p1, v1, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 159
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->validate()V

    .line 162
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    .line 164
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidate()V

    .line 165
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    :cond_1
    return-void

    .line 154
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newItems cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setItems([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 144
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;)V

    .line 145
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->validate()V

    .line 146
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    .line 148
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidate()V

    .line 149
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    :cond_0
    return-void

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newItems cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxListCount(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->maxListCount:I

    return-void
.end method

.method public setScrollingDisabled(Z)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setScrollingDisabled(ZZ)V

    .line 372
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    return-void
.end method

.method public setSelected(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez p1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    :goto_0
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setSelectedPrefWidth(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectedPrefWidth:Z

    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 1

    if-nez p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hide()V

    .line 118
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 123
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    return-void

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showList()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->show(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    :cond_1
    return-void
.end method

.method protected toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
