.class Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;
.super Ljava/lang/Object;
.source "Field7Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StarState"
.end annotation


# static fields
.field static final CONSTELLATION_RADIUS_MULTIPLIER:D = 1.2


# instance fields
.field activatedStars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

.field animateToTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

.field animationDurationNanos:J

.field animationElapsedNanos:J

.field currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

.field currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

.field lockedConstellations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;",
            ">;"
        }
    .end annotation
.end field

.field mode:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

.field projection:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;

.field wanderNanos:J

.field wanderPeriodNanos:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->activatedStars:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->lockedConstellations:Ljava/util/List;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    .line 91
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    .line 92
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->projection:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;

    .line 94
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->WANDERING:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->mode:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->wanderNanos:J

    const/16 v0, 0x28

    .line 96
    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->billions(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->wanderPeriodNanos:J

    .line 98
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    .line 99
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateToTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    const/16 v0, 0xa

    .line 100
    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->billions(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationDurationNanos:J

    const-wide/16 v0, -0x1

    .line 101
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationElapsedNanos:J

    return-void
.end method

.method static projectVisibleStars(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->clear()V

    .line 239
    iget-wide v2, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    iget-wide v4, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    mul-double v2, v2, v4

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->size()I

    move-result v4

    .line 241
    iget-wide v5, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    .line 242
    iget-wide v7, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 243
    iget-wide v9, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 244
    iget-wide v11, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 249
    iget-object v13, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->x:[D

    aget-wide v14, v13, v1

    .line 250
    iget-object v13, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->y:[D

    aget-wide v16, v13, v1

    .line 251
    iget-object v13, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->z:[D

    aget-wide v18, v13, v1

    mul-double v20, v14, v7

    mul-double v22, v16, v5

    move/from16 p1, v1

    sub-double v0, v20, v22

    mul-double v14, v14, v5

    mul-double v16, v16, v7

    add-double v14, v14, v16

    mul-double v16, v0, v11

    mul-double v20, v18, v9

    add-double v16, v16, v20

    neg-double v0, v0

    mul-double v0, v0, v9

    mul-double v18, v18, v11

    add-double v0, v0, v18

    mul-double v18, v14, v14

    mul-double v20, v0, v0

    add-double v18, v18, v20

    const-wide/16 v20, 0x0

    cmpl-double v13, v16, v20

    if-lez v13, :cond_0

    cmpg-double v13, v18, v2

    if-gez v13, :cond_0

    move-object/from16 v13, p0

    move-wide/from16 v21, v2

    .line 273
    iget-object v2, v13, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;->magnitude:[D

    aget-wide v18, v2, p1

    move-object/from16 v13, p2

    move-wide/from16 v16, v0

    move/from16 v20, p1

    invoke-virtual/range {v13 .. v20}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->add(DDDI)V

    goto :goto_1

    :cond_0
    move-wide/from16 v21, v2

    :goto_1
    add-int/lit8 v1, p1, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, v21

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAnimationProjection(J)V
    .locals 10

    .line 112
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationElapsedNanos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationElapsedNanos:J

    .line 113
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    .line 114
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateToTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget-wide v4, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationDurationNanos:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 116
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v4, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    iget-wide v6, p2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    move-wide v8, v0

    invoke-static/range {v4 .. v9}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->interp(DDD)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    .line 117
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v4, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    iget-wide v6, p2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    invoke-static/range {v4 .. v9}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->interp(DDD)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    .line 118
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v4, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    iget-wide v6, p2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    invoke-static/range {v4 .. v9}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->interp(DDD)D

    move-result-wide p1

    iput-wide p1, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    .line 119
    iget-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationElapsedNanos:J

    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationDurationNanos:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 p1, -0x1

    .line 120
    iput-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationElapsedNanos:J

    :cond_0
    return-void
.end method

.method private updateConstellationProjection()V
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    .line 126
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->centerRaRadians:D

    iput-wide v2, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    .line 127
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->centerDecRadians:D

    iput-wide v2, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    .line 128
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->angularRadius:D

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double v2, v2, v4

    iput-wide v2, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    return-void
.end method

.method private updateWanderingProjection(J)V
    .locals 5

    .line 104
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->wanderNanos:J

    add-long/2addr v0, p1

    iget-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->wanderPeriodNanos:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->wanderNanos:J

    .line 106
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    long-to-double v0, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    sub-double/2addr v3, v0

    const-wide p1, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v3, v3, p1

    iput-wide v3, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    .line 107
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    .line 108
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    const-wide v0, 0x3fd999999999999aL    # 0.4

    iput-wide v0, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    return-void
.end method


# virtual methods
.method activateStarsInActiveConstellationNearPoint(DD)V
    .locals 8

    .line 176
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    if-eqz v0, :cond_1

    mul-double v1, p1, p1

    mul-double v3, p3, p3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_1

    .line 177
    iget-object v0, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->starIndices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->projection:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;

    iget-object v2, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->starIndexToProjIndex:[I

    aget v2, v2, v1

    if-ltz v2, :cond_0

    .line 180
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->projection:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;

    iget-object v3, v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->x:[D

    aget-wide v4, v3, v2

    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v6, v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    div-double/2addr v4, v6

    .line 181
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->projection:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;

    iget-object v3, v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->y:[D

    aget-wide v2, v3, v2

    iget-object v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v6, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    div-double/2addr v2, v6

    sub-double v4, p1, v4

    mul-double v4, v4, v4

    sub-double v2, p3, v2

    mul-double v2, v2, v2

    add-double/2addr v4, v2

    const-wide v2, 0x3f847ae147ae147cL    # 0.010000000000000002

    cmpg-double v6, v4, v2

    if-gez v6, :cond_0

    .line 184
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->activatedStars:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method allConstellationsLocked()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->lockedConstellations:Ljava/util/List;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->CONSTELLATIONS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method allStarsInConstellationActive(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->activatedStars:Ljava/util/Set;

    iget-object p1, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->starIndices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method allStarsInCurrentConstellationActive()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->allStarsInConstellationActive(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method animateToConstellation(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;)V
    .locals 9

    .line 192
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    .line 193
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    .line 194
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    .line 195
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    .line 196
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateToTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v1, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->centerRaRadians:D

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    .line 197
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateToTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v1, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->centerDecRadians:D

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    .line 198
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateToTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v1, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->angularRadius:D

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double v1, v1, v3

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    .line 200
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v0, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    iget-wide v2, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->centerRaRadians:D

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v2, v4

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v8, v0, v2

    if-lez v8, :cond_0

    .line 201
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v0, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    sub-double/2addr v0, v6

    iput-wide v0, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v0, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    iget-wide v2, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->centerRaRadians:D

    sub-double/2addr v2, v4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v0, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    add-double/2addr v0, v6

    iput-wide v0, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 206
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationElapsedNanos:J

    return-void
.end method

.method animateToStartPosition()V
    .locals 3

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    .line 211
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    .line 212
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    .line 213
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateFromTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    .line 214
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateToTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->rightAscension:D

    .line 215
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateToTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->declination:D

    .line 216
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateToTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    const-wide v1, 0x3fd999999999999aL    # 0.4

    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    const-wide/16 v0, 0x0

    .line 217
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationElapsedNanos:J

    return-void
.end method

.method enterWanderingMode()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->mode:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->WANDERING:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    if-eq v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateToStartPosition()V

    .line 156
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->WANDERING:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->mode:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    const-wide/16 v0, 0x0

    .line 157
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->wanderNanos:J

    :cond_0
    return-void
.end method

.method lockCurrentConstellation()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->lockedConstellations:Ljava/util/List;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method resetAndWander()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->activatedStars:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 163
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->lockedConstellations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->enterWanderingMode()V

    return-void
.end method

.method switchToRandomUnlockedConstellation()Z
    .locals 4

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->CONSTELLATIONS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    .line 223
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->lockedConstellations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return v0

    .line 230
    :cond_2
    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->RAND:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    .line 231
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animateToConstellation(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;)V

    .line 232
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->CONSTELLATION:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->mode:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    const/4 v0, 0x1

    return v0
.end method

.method tick(J)V
    .locals 5

    .line 132
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->animationElapsedNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->updateAnimationProjection(J)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->mode:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->WANDERING:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    if-ne v0, v1, :cond_1

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->updateWanderingProjection(J)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    if-eqz p1, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->updateConstellationProjection()V

    .line 141
    :cond_2
    :goto_0
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->projection:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;

    invoke-static {p1, p2, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->projectVisibleStars(Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;)V

    return-void
.end method
