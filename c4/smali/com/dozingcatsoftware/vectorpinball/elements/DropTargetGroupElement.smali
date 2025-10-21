.class public Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;
.super Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
.source "DropTargetGroupElement.java"


# static fields
.field static final DEFAULT_COLOR:I

.field public static final GAP_BETWEEN_TARGETS_PROPERTY:Ljava/lang/String; = "gapBetweenTargets"

.field public static final GAP_FROM_WALL_PROPERTY:Ljava/lang/String; = "gapFromWall"

.field public static final NUM_TARGETS_PROPERTY:Ljava/lang/String; = "numTargets"

.field public static final POSITIONS_PROPERTY:Ljava/lang/String; = "positions"

.field public static final RESET_DELAY_PROPERTY:Ljava/lang/String; = "reset"

.field public static final START_DISTANCE_ALONG_WALL_PROPERTY:Ljava/lang/String; = "startDistanceAlongWall"

.field public static final TARGET_WIDTH_PROPERTY:Ljava/lang/String; = "targetWidth"

.field public static final WALL_END_PROPERTY:Ljava/lang/String; = "wallEnd"

.field public static final WALL_START_PROPERTY:Ljava/lang/String; = "wallStart"


# instance fields
.field allBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field positions:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 61
    invoke-static {v0, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v0

    sput v0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->allBodies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public allTargetsHit()Z
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->allBodies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 125
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->allBodies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Body;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 11

    .line 109
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->positions:[[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const/4 v10, 0x0

    .line 111
    aget v6, v4, v2

    const/4 v5, 0x1

    aget v7, v4, v5

    const/4 v5, 0x2

    aget v8, v4, v5

    const/4 v5, 0x3

    aget v9, v4, v5

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;->createThinWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    .line 113
    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->allBodies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 9

    .line 153
    sget p1, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->DEFAULT_COLOR:I

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->currentColor(I)I

    move-result p1

    .line 154
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->allBodies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    .line 156
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->allBodies:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 157
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->positions:[[F

    aget-object v0, v0, v8

    .line 159
    aget v1, v0, v7

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    move-object v0, p2

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->drawLine(FFFFI)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "positions"

    .line 71
    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getRawParameterValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [[F

    iput-object v7, v0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->positions:[[F

    const/4 v7, 0x0

    .line 74
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 75
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 76
    iget-object v9, v0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->positions:[[F

    new-array v10, v2, [F

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v11

    aput v11, v10, v5

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v11

    aput v11, v10, v6

    .line 77
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v11

    aput v11, v10, v4

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v8

    aput v8, v10, v3

    aput-object v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "wallStart"

    .line 81
    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getFloatArrayParameterValueForKey(Ljava/lang/String;)[F

    move-result-object v1

    const-string v7, "wallEnd"

    .line 82
    invoke-virtual {v0, v7}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getFloatArrayParameterValueForKey(Ljava/lang/String;)[F

    move-result-object v7

    const-string v8, "gapFromWall"

    .line 83
    invoke-virtual {v0, v8}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getFloatParameterValueForKey(Ljava/lang/String;)F

    move-result v8

    const-string v9, "startDistanceAlongWall"

    .line 85
    invoke-virtual {v0, v9}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getFloatParameterValueForKey(Ljava/lang/String;)F

    move-result v9

    const-string v10, "targetWidth"

    .line 86
    invoke-virtual {v0, v10}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getFloatParameterValueForKey(Ljava/lang/String;)F

    move-result v10

    const-string v11, "gapBetweenTargets"

    .line 87
    invoke-virtual {v0, v11}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getFloatParameterValueForKey(Ljava/lang/String;)F

    move-result v11

    const-string v12, "numTargets"

    .line 88
    invoke-virtual {v0, v12}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getIntParameterValueForKey(Ljava/lang/String;)I

    move-result v12

    .line 90
    new-array v13, v12, [[F

    iput-object v13, v0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->positions:[[F

    .line 91
    aget v13, v7, v6

    aget v14, v1, v6

    sub-float/2addr v13, v14

    float-to-double v13, v13

    aget v7, v7, v5

    aget v15, v1, v5

    sub-float/2addr v7, v15

    float-to-double v3, v7

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v13, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v12, :cond_1

    int-to-float v15, v7

    add-float v16, v10, v11

    mul-float v15, v15, v16

    add-float/2addr v15, v9

    move/from16 v17, v7

    float-to-double v6, v15

    move-wide/from16 v18, v3

    float-to-double v2, v10

    .line 96
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    move-wide/from16 v20, v6

    float-to-double v5, v8

    .line 97
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v22, v22, v5

    .line 98
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v24

    const/4 v4, 0x0

    .line 99
    aget v7, v1, v4

    move-wide/from16 v24, v5

    float-to-double v4, v7

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v26, v26, v20

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double v4, v4, v26

    add-double v4, v4, v22

    double-to-float v5, v4

    const/4 v4, 0x1

    .line 100
    aget v7, v1, v4

    float-to-double v6, v7

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v20, v20, v26

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double v6, v6, v20

    add-double v6, v6, v24

    double-to-float v6, v6

    const/4 v4, 0x0

    .line 101
    aget v7, v1, v4

    move/from16 v20, v5

    float-to-double v4, v7

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v26, v26, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double v4, v4, v26

    add-double v4, v4, v22

    double-to-float v4, v4

    const/4 v5, 0x1

    .line 102
    aget v7, v1, v5

    move/from16 v16, v6

    float-to-double v5, v7

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v2, v2, v26

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v2

    add-double v5, v5, v24

    double-to-float v2, v5

    .line 103
    iget-object v3, v0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->positions:[[F

    const/4 v5, 0x4

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v20, v6, v7

    const/4 v15, 0x1

    aput v16, v6, v15

    const/16 v16, 0x2

    aput v4, v6, v16

    const/4 v4, 0x3

    aput v2, v6, v4

    aput-object v6, v3, v17

    add-int/lit8 v2, v17, 0x1

    move v7, v2

    move-wide/from16 v3, v18

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method public getBodies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->allBodies:Ljava/util/List;

    return-object v0
.end method

.method public handleCollision(Lcom/dozingcatsoftware/vectorpinball/model/Ball;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/physics/box2d/Body;->setActive(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->allTargetsHit()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getDelegate()Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    move-result-object p2

    invoke-interface {p2, p3, p0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;->allDropTargetsInGroupHit(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    .line 136
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->parameters:Ljava/util/Map;

    const-string p2, "reset"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    float-to-long p1, p1

    .line 138
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public makeAllTargetsVisible()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->allBodies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 147
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->allBodies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/Body;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setActive(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
