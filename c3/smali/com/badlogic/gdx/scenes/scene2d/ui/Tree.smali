.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;"
    }
.end annotation


# static fields
.field private static final tmp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field private foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field iconSpacingLeft:F

.field iconSpacingRight:F

.field indentSpacing:F

.field private overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field paddingLeft:F

.field paddingRight:F

.field private prefHeight:F

.field private prefWidth:F

.field rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field final rootNodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation
.end field

.field final selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
            "TN;>;"
        }
    .end annotation
.end field

.field private sizeInvalid:Z

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

.field ySpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->tmp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    .line 60
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    .line 64
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    const/high16 v0, 0x40800000    # 4.0f

    .line 52
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 68
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    .line 80
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 81
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setMultiple(Z)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 83
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->initialize()V

    return-void
.end method

.method static collapseAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    .line 548
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 549
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 550
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 551
    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeSize()V
    .locals 3

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 216
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    const/4 v1, 0x0

    .line 217
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 218
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize(Lcom/badlogic/gdx/utils/Array;FF)V

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingRight:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    return-void
.end method

.method private computeSize(Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    .line 223
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 224
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    add-float/2addr v1, v2

    .line 225
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 226
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    add-float v5, p2, p3

    .line 228
    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 229
    instance-of v7, v6, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v7, :cond_0

    .line 230
    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 231
    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v7

    add-float/2addr v5, v7

    .line 232
    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    goto :goto_1

    .line 234
    :cond_0
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v7

    add-float/2addr v5, v7

    .line 235
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 237
    :goto_1
    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v6, :cond_1

    .line 238
    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    add-float/2addr v6, v1

    add-float/2addr v5, v6

    .line 239
    iget v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    iget-object v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 241
    :cond_1
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 242
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    iget v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    add-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 243
    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v5, p2

    invoke-direct {p0, v4, v5, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize(Lcom/badlogic/gdx/utils/Array;FF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getCullingArea()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v12

    const/4 v0, 0x0

    if-eqz v12, :cond_0

    .line 294
    iget v0, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 295
    iget v1, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v0

    move v13, v0

    move v14, v1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 297
    :goto_0
    iget-object v15, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getX()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getY()F

    move-result v17

    add-float v18, v16, p3

    add-float v0, v18, v11

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    add-float v7, v0, v1

    const/4 v0, 0x0

    .line 299
    iget v6, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_9

    .line 300
    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 301
    iget-object v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 302
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v19

    iget v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    if-eqz v12, :cond_3

    add-float v0, v19, v2

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_1

    cmpg-float v0, v19, v14

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    cmpg-float v0, v19, v13

    if-gez v0, :cond_2

    return-void

    :cond_2
    move-object v10, v4

    move/from16 v26, v5

    move/from16 v22, v6

    move v6, v7

    goto/16 :goto_4

    .line 304
    :cond_3
    :goto_2
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v20, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    iget-object v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_4

    .line 305
    iget-object v1, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    add-float v0, v17, v19

    move-object/from16 v21, v1

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    div-float v1, v1, v20

    sub-float v22, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v23

    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float v24, v2, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v25, v2

    move-object/from16 v2, v21

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    move-object v10, v4

    move/from16 v4, v16

    move/from16 v26, v5

    move/from16 v5, v22

    move/from16 v22, v6

    move/from16 v6, v23

    move/from16 v23, v7

    move/from16 v7, v24

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawSelection(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_3

    :cond_4
    move/from16 v25, v2

    move-object/from16 v21, v3

    move-object v10, v4

    move/from16 v26, v5

    move/from16 v22, v6

    move/from16 v23, v7

    .line 306
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-ne v10, v0, :cond_5

    iget-object v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_5

    .line 307
    iget-object v2, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    add-float v0, v17, v19

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    div-float v1, v1, v20

    sub-float v5, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v6

    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float v7, v25, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p1

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawOver(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 310
    :cond_5
    :goto_3
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_6

    add-float v0, v17, v19

    .line 311
    iget-object v1, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v2, v25, v1

    div-float v2, v2, v20

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v0, v1

    .line 312
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 313
    iget-object v2, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p1

    move/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 314
    invoke-interface {v9, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 317
    :cond_6
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v6, v23

    if-lez v0, :cond_7

    .line 318
    invoke-virtual {v8, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;F)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    add-float v19, v17, v19

    .line 319
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    sub-float v0, v25, v0

    div-float v0, v0, v20

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    add-float v5, v19, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p1

    move/from16 v4, v18

    .line 320
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V

    .line 325
    :cond_7
    :goto_4
    iget-boolean v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_8

    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_8

    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float v1, p3, v1

    invoke-direct {v8, v9, v0, v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/utils/Array;FF)V

    :cond_8
    add-int/lit8 v5, v26, 0x1

    move-object/from16 v10, p2

    move v7, v6

    move/from16 v6, v22

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method static expandAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    .line 560
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 561
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandAll()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array;",
            ")Z"
        }
    .end annotation

    .line 517
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 518
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 519
    iget-boolean v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;"
        }
    .end annotation

    .line 531
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 532
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 533
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v1, v0, :cond_3

    .line 536
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 537
    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)F"
        }
    .end annotation

    .line 373
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 374
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 375
    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 376
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getHeight()F

    move-result v4

    sub-float/2addr v4, v3

    sub-float/2addr p3, v4

    sub-float v4, p3, v3

    .line 377
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    sub-float/2addr v4, v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_0

    cmpg-float v4, p2, p3

    if-gez v4, :cond_0

    .line 378
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return v6

    :cond_0
    add-float/2addr v3, v5

    sub-float/2addr p3, v3

    .line 382
    iget-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v3, :cond_1

    .line 383
    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v2, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F

    move-result p3

    cmpl-float v2, p3, v6

    if-nez v2, :cond_1

    return v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method private initialize()V
    .locals 1

    .line 87
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method private layout(Lcom/badlogic/gdx/utils/Array;FFF)F
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FFF)F"
        }
    .end annotation

    .line 253
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 254
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    .line 255
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    add-float/2addr v2, v1

    .line 256
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 257
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    add-float v6, p2, p4

    .line 259
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v7, :cond_0

    .line 260
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    add-float/2addr v7, v2

    add-float/2addr v6, v7

    goto :goto_1

    :cond_0
    add-float/2addr v6, v1

    .line 263
    :goto_1
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v7, v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->pack()V

    .line 264
    :cond_1
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getHeight()F

    move-result v7

    sub-float/2addr p3, v7

    .line 265
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v7, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sub-float/2addr p3, v0

    .line 267
    iget-boolean v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v6, :cond_2

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v6, p2

    invoke-direct {p0, v5, v6, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->layout(Lcom/badlogic/gdx/utils/Array;FFF)F

    move-result p3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method

.method private plusMinusWidth()F
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    return v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    return-void
.end method

.method public clearChildren()V
    .locals 1

    .line 192
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clearChildren()V

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    return-void
.end method

.method public collapseAll()V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 4

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 274
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 275
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/utils/Array;FF)V

    .line 277
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 6

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 284
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 285
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_0
    return-void
.end method

.method protected drawExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FF)V"
        }
    .end annotation

    .line 338
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method protected drawIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FF)V"
        }
    .end annotation

    .line 342
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method protected drawOver(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FFFF)V"
        }
    .end annotation

    .line 334
    invoke-interface/range {p2 .. p7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method protected drawSelection(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FFFF)V"
        }
    .end annotation

    .line 330
    invoke-interface/range {p2 .. p7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public expandAll()V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->expandAll(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public findExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    return-void
.end method

.method public findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TN;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object p1

    return-object p1

    .line 526
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getClickListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    return-object v0
.end method

.method protected getExpandIcon(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;F)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;F)",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 352
    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    .line 353
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getMultiple()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->tmp:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->screenToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_1

    cmpg-float p2, v0, p2

    if-gez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 359
    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_1
    if-eqz p2, :cond_3

    return-object p2

    .line 362
    :cond_3
    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_2
    return-object p1
.end method

.method public getIndentSpacing()F
    .locals 1

    .line 472
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    return v0
.end method

.method public getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TN;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F

    .line 369
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object p1
.end method

.method public getNodes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getOverNode()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getOverValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 446
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 1

    .line 497
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 498
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 493
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    return v0
.end method

.method public getRootNodes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getSelectedNode()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getSelectedValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSelection()Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
            "TN;>;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    return-object v0
.end method

.method public getYSpacing()F
    .locals 1

    .line 481
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    return v0
.end method

.method public insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 152
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-ge v0, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 161
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 162
    invoke-virtual {p2, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    .line 166
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result p1

    goto :goto_1

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 175
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->countActors()I

    move-result p1

    add-int/2addr p1, v0

    .line 177
    :goto_1
    invoke-virtual {p2, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 203
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    return-void
.end method

.method public layout()V
    .locals 5

    .line 248
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->layout(Lcom/badlogic/gdx/utils/Array;FFF)F

    return-void
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 181
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 186
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 187
    invoke-virtual {p1, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    :cond_2
    return-void
.end method

.method public restoreExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 506
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 507
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 509
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 510
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandTo()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    .line 391
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 392
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 393
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    goto :goto_2

    .line 394
    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 395
    :cond_1
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    cmpg-float v3, v3, p3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->add(Ljava/lang/Object;)V

    .line 396
    :cond_2
    iget-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v2, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public setIconSpacing(FF)V
    .locals 0

    .line 487
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    .line 488
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    return-void
.end method

.method public setIndentSpacing(F)V
    .locals 0

    .line 467
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    return-void
.end method

.method public setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 451
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-void
.end method

.method public setPadding(F)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    .line 457
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingRight:F

    return-void
.end method

.method public setPadding(FF)V
    .locals 0

    .line 462
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingLeft:F

    .line 463
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->paddingRight:F

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 1

    .line 141
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 144
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->plusMinusWidth()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    :cond_0
    return-void
.end method

.method public setYSpacing(F)V
    .locals 0

    .line 477
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    return-void
.end method

.method public updateRootNodes()V
    .locals 6

    .line 429
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 430
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 431
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 432
    invoke-virtual {v3, p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 435
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
