.class public Lcom/badlogic/gdx/utils/QuadTreeFloat;
.super Ljava/lang/Object;
.source "QuadTreeFloat.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# static fields
.field public static final DISTSQR:I = 0x3

.field public static final VALUE:I = 0x0

.field public static final X:I = 0x1

.field public static final Y:I = 0x2

.field private static final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/utils/QuadTreeFloat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I

.field public depth:I

.field public height:F

.field public final maxDepth:I

.field public final maxValues:I

.field public ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

.field public nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

.field public se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

.field public sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

.field public values:[F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/QuadTreeFloat$1;

    const/16 v1, 0x80

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/QuadTreeFloat$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x8

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/QuadTreeFloat;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x3

    .line 55
    iput p1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxValues:I

    .line 56
    iput p2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxDepth:I

    .line 57
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    return-void
.end method

.method private addToChild(FFF)V
    .locals 8

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    div-float v6, v0, v1

    .line 98
    iget v3, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    add-float v0, v3, v5

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 99
    iget v4, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    add-float v0, v4, v6

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    add-int/lit8 v7, v0, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->obtainChild(FFFFI)Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    add-float/2addr v4, v6

    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    add-int/lit8 v7, v0, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->obtainChild(FFFFI)Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    goto :goto_0

    .line 104
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    add-float v0, v4, v6

    cmpg-float v0, p3, v0

    if-gez v0, :cond_5

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    add-float/2addr v3, v5

    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    add-int/lit8 v7, v0, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->obtainChild(FFFFI)Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    goto :goto_0

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    add-float/2addr v3, v5

    add-float/2addr v4, v6

    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    add-int/lit8 v7, v0, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->obtainChild(FFFFI)Lcom/badlogic/gdx/utils/QuadTreeFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 109
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->add(FFF)V

    return-void
.end method

.method private findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 200
    iget v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    cmpg-float v5, v4, v1

    if-gez v5, :cond_7

    iget v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    add-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_7

    iget v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    cmpg-float v5, v4, v2

    if-gez v5, :cond_7

    iget v5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    add-float/2addr v4, v5

    cmpl-float v4, v4, v2

    if-gtz v4, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    iget v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 204
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/FloatArray;->first()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    .line 205
    iget-object v12, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    const/4 v13, 0x1

    :goto_0
    if-ge v13, v4, :cond_2

    .line 207
    aget v14, v12, v13

    add-int/lit8 v15, v13, 0x1

    aget v15, v12, v15

    sub-float v16, v14, v1

    sub-float v17, v15, v2

    mul-float v16, v16, v16

    mul-float v17, v17, v17

    add-float v16, v16, v17

    cmpg-float v17, v16, v11

    if-gez v17, :cond_1

    add-int/lit8 v5, v13, -0x1

    .line 212
    aget v5, v12, v5

    move v7, v14

    move v9, v15

    move/from16 v11, v16

    :cond_1
    add-int/lit8 v13, v13, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 217
    invoke-virtual {v3, v1, v5}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    .line 218
    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    .line 219
    invoke-virtual {v3, v8, v9}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    .line 220
    invoke-virtual {v3, v10, v11}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    goto :goto_1

    .line 222
    :cond_3
    iget-object v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v4, :cond_4

    invoke-direct {v4, v1, v2, v3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 223
    :cond_4
    iget-object v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v4, :cond_5

    invoke-direct {v4, v1, v2, v3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 224
    :cond_5
    iget-object v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v4, :cond_6

    invoke-direct {v4, v1, v2, v3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 225
    :cond_6
    iget-object v4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v4, :cond_7

    invoke-direct {v4, v1, v2, v3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private obtainChild(FFFFI)Lcom/badlogic/gdx/utils/QuadTreeFloat;
    .locals 1

    .line 113
    sget-object v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 114
    iput p1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    .line 115
    iput p2, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    .line 116
    iput p3, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    .line 117
    iput p4, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    .line 118
    iput p5, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    return-object v0
.end method

.method private query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V
    .locals 10

    move-object v0, p0

    move-object/from16 v9, p7

    .line 136
    iget v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    add-float v2, p4, p6

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    iget v2, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, p4

    if-lez v1, :cond_6

    iget v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    add-float v2, p5, p6

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    iget v2, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, p5

    if-gtz v1, :cond_0

    goto/16 :goto_1

    .line 137
    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 139
    iget-object v2, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_6

    .line 141
    aget v4, v2, v3

    add-int/lit8 v5, v3, 0x1

    aget v5, v2, v5

    sub-float v6, v4, p1

    sub-float v7, v5, p2

    mul-float v6, v6, v6

    mul-float v7, v7, v7

    add-float/2addr v6, v7

    cmpg-float v7, v6, p3

    if-gtz v7, :cond_1

    add-int/lit8 v7, v3, -0x1

    .line 145
    aget v7, v2, v7

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 146
    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 147
    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 148
    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v1, :cond_3

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 153
    :cond_3
    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v1, :cond_4

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 154
    :cond_4
    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v1, :cond_5

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 155
    :cond_5
    iget-object v1, v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v1, :cond_6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private split(FFF)V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    const/4 v1, 0x0

    .line 88
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxValues:I

    if-ge v1, v2, :cond_0

    .line 89
    aget v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, v0, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, v0, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->addToChild(FFF)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->addToChild(FFF)V

    return-void
.end method


# virtual methods
.method public add(FFF)V
    .locals 3

    .line 68
    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->addToChild(FFF)V

    return-void

    .line 73
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->depth:I

    iget v2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxDepth:I

    if-ge v1, v2, :cond_1

    .line 74
    iget v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxValues:I

    if-ne v0, v1, :cond_2

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->split(FFF)V

    return-void

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    array-length v2, v1

    if-ne v0, v2, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->growValues()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    aput p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    .line 81
    aput p2, v1, p1

    add-int/lit8 v0, v0, 0x2

    .line 82
    aput p3, v1, v0

    .line 83
    iget p1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    return-void
.end method

.method protected growValues()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    add-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public nearest(FFLcom/badlogic/gdx/utils/FloatArray;)Z
    .locals 10

    .line 165
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 167
    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 168
    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 169
    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->findNearestInternal(FFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 171
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->first()F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {p3, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 174
    iget v6, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    iget v8, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v6, v6, v6

    .line 179
    :cond_1
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    float-to-double v8, v6

    .line 180
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {p0, p1, p2, v8, p3}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFLcom/badlogic/gdx/utils/FloatArray;)V

    .line 181
    iget p1, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    :goto_1
    if-ge v5, p1, :cond_3

    .line 182
    invoke-virtual {p3, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result p2

    cmpg-float v8, p2, v6

    if-gez v8, :cond_2

    add-int/lit8 v1, v5, -0x3

    .line 185
    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    add-int/lit8 v3, v5, -0x2

    .line 186
    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    add-int/lit8 v4, v5, -0x1

    .line 187
    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    move v6, p2

    :cond_2
    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 190
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return v7

    .line 191
    :cond_4
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 192
    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 193
    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 194
    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 195
    invoke-virtual {p3, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    return v2
.end method

.method public query(FFFLcom/badlogic/gdx/utils/FloatArray;)V
    .locals 8

    mul-float v3, p3, p3

    sub-float v4, p1, p3

    sub-float v5, p2, p3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v6, p3, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, p4

    .line 131
    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/utils/QuadTreeFloat;->query(FFFFFFLcom/badlogic/gdx/utils/FloatArray;)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 230
    iget v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    sget-object v2, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 233
    iput-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->nw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v0, :cond_1

    .line 236
    sget-object v2, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 237
    iput-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->sw:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v0, :cond_2

    .line 240
    sget-object v2, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 241
    iput-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->ne:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    if-eqz v0, :cond_3

    .line 244
    sget-object v2, Lcom/badlogic/gdx/utils/QuadTreeFloat;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 245
    iput-object v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->se:Lcom/badlogic/gdx/utils/QuadTreeFloat;

    :cond_3
    const/4 v0, 0x0

    .line 248
    iput v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->count:I

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->maxValues:I

    if-le v0, v1, :cond_4

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->values:[F

    :cond_4
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->x:F

    .line 62
    iput p2, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->y:F

    .line 63
    iput p3, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->width:F

    .line 64
    iput p4, p0, Lcom/badlogic/gdx/utils/QuadTreeFloat;->height:F

    return-void
.end method
