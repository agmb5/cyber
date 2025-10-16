.class public Lcom/badlogic/gdx/math/ConvexHull;
.super Ljava/lang/Object;
.source "ConvexHull.java"


# instance fields
.field private final hull:Lcom/badlogic/gdx/utils/FloatArray;

.field private final indices:Lcom/badlogic/gdx/utils/IntArray;

.field private final originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private final quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

.field private sortedPoints:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->indices:Lcom/badlogic/gdx/utils/IntArray;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    return-void
.end method

.method private ccw(FF)F
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 157
    iget v1, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v1, -0x4

    .line 158
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    add-int/lit8 v3, v1, -0x3

    .line 159
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    add-int/lit8 v1, v1, -0x2

    .line 160
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    .line 161
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->peek()F

    move-result v0

    sub-float/2addr v1, v2

    sub-float/2addr p2, v3

    mul-float v1, v1, p2

    sub-float/2addr v0, v3

    sub-float/2addr p1, v2

    mul-float v0, v0, p1

    sub-float/2addr v1, v0

    return v1
.end method

.method private quicksortPartition([FII)I
    .locals 8

    .line 192
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 193
    aget v2, p1, v1

    move v3, p2

    :cond_0
    :goto_0
    if-ge v3, p3, :cond_4

    :goto_1
    if-ge v3, p3, :cond_1

    .line 198
    aget v4, p1, v3

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_1

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 200
    :cond_1
    :goto_2
    aget v4, p1, p3

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_3

    aget v4, p1, p3

    cmpl-float v4, v4, v0

    if-nez v4, :cond_2

    add-int/lit8 v4, p3, 0x1

    aget v4, p1, v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_2

    goto :goto_3

    :cond_2
    if-ge v3, p3, :cond_0

    .line 203
    aget v4, p1, v3

    .line 204
    aget v5, p1, p3

    aput v5, p1, v3

    .line 205
    aput v4, p1, p3

    add-int/lit8 v4, v3, 0x1

    .line 207
    aget v5, p1, v4

    add-int/lit8 v6, p3, 0x1

    .line 208
    aget v7, p1, v6

    aput v7, p1, v4

    .line 209
    aput v5, p1, v6

    goto :goto_0

    :cond_3
    :goto_3
    add-int/lit8 p3, p3, -0x2

    goto :goto_2

    .line 212
    :cond_4
    aget v3, p1, p3

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_5

    aget v3, p1, p3

    cmpl-float v3, v0, v3

    if-nez v3, :cond_6

    add-int/lit8 v3, p3, 0x1

    aget v3, p1, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6

    .line 213
    :cond_5
    aget v3, p1, p3

    aput v3, p1, p2

    .line 214
    aput v0, p1, p3

    add-int/lit8 p2, p3, 0x1

    .line 216
    aget v0, p1, p2

    aput v0, p1, v1

    .line 217
    aput v2, p1, p2

    :cond_6
    return p3
.end method

.method private quicksortPartitionWithIndices([FIIZ[S)I
    .locals 8

    .line 257
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 258
    aget v2, p1, v1

    move v3, p2

    :cond_0
    :goto_0
    if-ge v3, p3, :cond_6

    :goto_1
    if-ge v3, p3, :cond_1

    .line 264
    aget v4, p1, v3

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_1

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_3

    .line 267
    :goto_2
    aget v4, p1, p3

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_2

    aget v4, p1, p3

    cmpl-float v4, v4, v0

    if-nez v4, :cond_4

    add-int/lit8 v4, p3, 0x1

    aget v4, p1, v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_4

    :cond_2
    add-int/lit8 p3, p3, -0x2

    goto :goto_2

    .line 270
    :cond_3
    :goto_3
    aget v4, p1, p3

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_5

    aget v4, p1, p3

    cmpl-float v4, v4, v0

    if-nez v4, :cond_4

    add-int/lit8 v4, p3, 0x1

    aget v4, p1, v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    goto :goto_4

    :cond_4
    if-ge v3, p3, :cond_0

    .line 274
    aget v4, p1, v3

    .line 275
    aget v5, p1, p3

    aput v5, p1, v3

    .line 276
    aput v4, p1, p3

    add-int/lit8 v4, v3, 0x1

    .line 278
    aget v5, p1, v4

    add-int/lit8 v6, p3, 0x1

    .line 279
    aget v7, p1, v6

    aput v7, p1, v4

    .line 280
    aput v5, p1, v6

    .line 282
    div-int/lit8 v4, v3, 0x2

    aget-short v5, p5, v4

    .line 283
    div-int/lit8 v6, p3, 0x2

    aget-short v7, p5, v6

    aput-short v7, p5, v4

    .line 284
    aput-short v5, p5, v6

    goto :goto_0

    :cond_5
    :goto_4
    add-int/lit8 p3, p3, -0x2

    goto :goto_3

    .line 287
    :cond_6
    aget v3, p1, p3

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_8

    aget v3, p1, p3

    cmpl-float v3, v0, v3

    if-nez v3, :cond_9

    if-eqz p4, :cond_7

    add-int/lit8 p4, p3, 0x1

    aget p4, p1, p4

    cmpg-float p4, v2, p4

    if-gez p4, :cond_9

    goto :goto_5

    :cond_7
    add-int/lit8 p4, p3, 0x1

    aget p4, p1, p4

    cmpl-float p4, v2, p4

    if-lez p4, :cond_9

    .line 288
    :cond_8
    :goto_5
    aget p4, p1, p3

    aput p4, p1, p2

    .line 289
    aput v0, p1, p3

    add-int/lit8 p4, p3, 0x1

    .line 291
    aget v0, p1, p4

    aput v0, p1, v1

    .line 292
    aput v2, p1, p4

    .line 294
    div-int/lit8 p2, p2, 0x2

    aget-short p1, p5, p2

    .line 295
    div-int/lit8 p4, p3, 0x2

    aget-short v0, p5, p4

    aput-short v0, p5, p2

    .line 296
    aput-short p1, p5, p4

    :cond_9
    return p3
.end method

.method private sort([FI)V
    .locals 6

    add-int/lit8 p2, p2, -0x1

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    .line 171
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 p2, p2, -0x1

    .line 172
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 173
    :cond_0
    :goto_0
    iget p2, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez p2, :cond_3

    .line 174
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result p2

    .line 175
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v1

    if-gt p2, v1, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/badlogic/gdx/math/ConvexHull;->quicksortPartition([FII)I

    move-result v2

    sub-int v3, v2, v1

    sub-int v4, p2, v2

    if-le v3, v4, :cond_2

    .line 179
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v5, v2, -0x2

    .line 180
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v5, v2, 0x2

    .line 182
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 183
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    if-lt v4, v3, :cond_0

    .line 185
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v2, v2, -0x2

    .line 186
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private sortWithIndices([FIZ)V
    .locals 9

    .line 225
    div-int/lit8 v0, p2, 0x2

    .line 226
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 227
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 228
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 230
    aput-short v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 235
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 p2, p2, -0x1

    .line 236
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 237
    :cond_1
    :goto_1
    iget p2, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez p2, :cond_4

    .line 238
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result p2

    .line 239
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v8

    if-gt p2, v8, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move v5, p2

    move v6, p3

    move-object v7, v1

    .line 241
    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/math/ConvexHull;->quicksortPartitionWithIndices([FIIZ[S)I

    move-result v2

    sub-int v3, v2, v8

    sub-int v4, p2, v2

    if-le v3, v4, :cond_3

    .line 243
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v5, v2, -0x2

    .line 244
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_3
    add-int/lit8 v5, v2, 0x2

    .line 246
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 247
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    if-lt v4, v3, :cond_1

    .line 249
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v2, v2, -0x2

    .line 250
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public computeIndices(Lcom/badlogic/gdx/utils/FloatArray;ZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 6

    .line 89
    iget-object v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p1

    return-object p1
.end method

.method public computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 9

    const/16 v0, 0x7fff

    if-gt p3, v0, :cond_8

    add-int v0, p2, p3

    const/4 v1, 0x0

    if-nez p4, :cond_2

    .line 104
    iget-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ge v2, p3, :cond_1

    :cond_0
    new-array v2, p3, [F

    iput-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 108
    invoke-direct {p0, p1, p3, p5}, Lcom/badlogic/gdx/math/ConvexHull;->sortWithIndices([FIZ)V

    const/4 p2, 0x0

    .line 111
    :cond_2
    iget-object p3, p0, Lcom/badlogic/gdx/math/ConvexHull;->indices:Lcom/badlogic/gdx/utils/IntArray;

    .line 112
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 114
    iget-object p5, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 115
    invoke-virtual {p5}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 118
    div-int/lit8 v2, p2, 0x2

    move v3, p2

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ge v3, v0, :cond_4

    .line 119
    aget v6, p1, v3

    add-int/lit8 v7, v3, 0x1

    .line 120
    aget v7, p1, v7

    .line 121
    :goto_1
    iget v8, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v8, v5, :cond_3

    invoke-direct {p0, v6, v7}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_3

    .line 122
    iget v8, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v8, v8, -0x2

    iput v8, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 123
    iget v8, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p5, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 126
    invoke-virtual {p5, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 127
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v5

    .line 131
    div-int/lit8 v2, v0, 0x2

    iget v3, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v3, v3, 0x2

    :goto_2
    if-lt v0, p2, :cond_6

    .line 132
    aget v5, p1, v0

    add-int/lit8 v6, v0, 0x1

    .line 133
    aget v6, p1, v6

    .line 134
    :goto_3
    iget v7, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v7, v3, :cond_5

    invoke-direct {p0, v5, v6}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v7

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_5

    .line 135
    iget v7, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v7, v7, -0x2

    iput v7, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 136
    iget v7, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_3

    .line 138
    :cond_5
    invoke-virtual {p5, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 139
    invoke-virtual {p5, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 140
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    if-nez p4, :cond_7

    .line 145
    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 146
    iget-object p2, p3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 147
    iget p4, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    :goto_4
    if-ge v1, p4, :cond_7

    .line 148
    aget p5, p2, v1

    aget-short p5, p1, p5

    aput p5, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object p3

    .line 100
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count must be <= 32767"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public computeIndices([FZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 6

    .line 94
    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p1

    return-object p1
.end method

.method public computePolygon(Lcom/badlogic/gdx/utils/FloatArray;Z)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 2

    .line 34
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/math/ConvexHull;->computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object p1

    return-object p1
.end method

.method public computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 6

    add-int v0, p2, p3

    const/4 v1, 0x0

    if-nez p4, :cond_2

    .line 54
    iget-object p4, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    if-eqz p4, :cond_0

    array-length p4, p4

    if-ge p4, p3, :cond_1

    :cond_0
    new-array p4, p3, [F

    iput-object p4, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 55
    :cond_1
    iget-object p4, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    invoke-static {p1, p2, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 58
    invoke-direct {p0, p1, p3}, Lcom/badlogic/gdx/math/ConvexHull;->sort([FI)V

    const/4 p2, 0x0

    .line 61
    :cond_2
    iget-object p3, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 62
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    move p4, p2

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge p4, v0, :cond_4

    .line 66
    aget v3, p1, p4

    add-int/lit8 v4, p4, 0x1

    .line 67
    aget v4, p1, v4

    .line 68
    :goto_1
    iget v5, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v5, v2, :cond_3

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v5

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_3

    .line 69
    iget v5, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 71
    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    add-int/lit8 p4, p4, 0x2

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v2

    .line 75
    iget p4, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 p4, p4, 0x2

    :goto_2
    if-lt v0, p2, :cond_6

    .line 76
    aget v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    .line 77
    aget v3, p1, v3

    .line 78
    :goto_3
    iget v4, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v4, p4, :cond_5

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v4

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_5

    .line 79
    iget v4, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    goto :goto_3

    .line 80
    :cond_5
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 81
    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    :cond_6
    return-object p3
.end method

.method public computePolygon([FZ)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 2

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/badlogic/gdx/math/ConvexHull;->computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object p1

    return-object p1
.end method
