.class public Lcom/badlogic/gdx/utils/IntSet;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    }
.end annotation


# instance fields
.field hasZeroValue:Z

.field private iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field keyTable:[I

.field private final loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 82
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    .line 84
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 85
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 86
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    int-to-long v0, p2

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->shift:I

    .line 89
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFactor must be > 0 and < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntSet;)V
    .locals 4

    .line 94
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 95
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 97
    iget-boolean p1, p1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return-void
.end method

.method private addResize(I)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 178
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v1

    .line 179
    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    .line 180
    aput p1, v0, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 178
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private locateKey(I)I
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 122
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v1

    .line 123
    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_0
    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 122
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private resize(I)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v0, v0

    int-to-float v1, p1

    .line 272
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 273
    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    int-to-long v1, v1

    .line 274
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->shift:I

    .line 276
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 278
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 280
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 282
    aget v2, v1, p1

    if-eqz v2, :cond_0

    .line 283
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/IntSet;->addResize(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs with([I)Lcom/badlogic/gdx/utils/IntSet;
    .locals 1

    .line 358
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    .line 359
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/IntSet;->addAll([I)V

    return-object v0
.end method


# virtual methods
.method public add(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 132
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz p1, :cond_0

    return v0

    .line 133
    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 134
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1

    .line 137
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->locateKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    return v0

    :cond_2
    add-int/2addr v2, v1

    neg-int v0, v2

    .line 140
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput p1, v2, v0

    .line 141
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, v0, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_3
    return v1
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 2

    .line 146
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget p1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;II)V
    .locals 3

    add-int v0, p2, p3

    .line 150
    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-gt v0, v1, :cond_0

    .line 152
    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " <= "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntSet;)V
    .locals 3

    .line 166
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->ensureCapacity(I)V

    .line 167
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 168
    :cond_0
    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 169
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 170
    aget v2, p1, v1

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs addAll([I)V
    .locals 2

    .line 156
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    return-void
.end method

.method public addAll([III)V
    .locals 1

    .line 160
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/IntSet;->ensureCapacity(I)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 162
    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 244
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 246
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 247
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 233
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 239
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 240
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    return-void
.end method

.method public contains(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 251
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return p1

    .line 252
    :cond_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 266
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 299
    instance-of v0, p1, Lcom/badlogic/gdx/utils/IntSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 300
    :cond_0
    check-cast p1, Lcom/badlogic/gdx/utils/IntSet;

    .line 301
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-eq v0, v2, :cond_1

    return v1

    .line 302
    :cond_1
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eq v0, v2, :cond_2

    return v1

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 304
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 305
    aget v4, v0, v3

    if-eqz v4, :cond_3

    aget v4, v0, v3

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public first()I
    .locals 4

    .line 256
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 258
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 259
    aget v3, v0, v1

    if-eqz v3, :cond_1

    aget v0, v0, v1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IntSet is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public hashCode()I
    .locals 5

    .line 289
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 290
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 291
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 292
    aget v4, v1, v3

    if-eqz v4, :cond_0

    add-int/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    .locals 3

    .line 340
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    return-object v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 343
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    return-object v0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 214
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected place(I)I
    .locals 4

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    .line 115
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public remove(I)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 189
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-nez p1, :cond_0

    return v0

    .line 190
    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 191
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1

    .line 195
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->locateKey(I)I

    move-result p1

    if-gez p1, :cond_2

    return v0

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 198
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    add-int/lit8 v4, p1, 0x1

    :goto_0
    and-int/2addr v4, v3

    .line 199
    aget v5, v2, v4

    if-eqz v5, :cond_4

    .line 200
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, p1, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_3

    .line 202
    aput v5, v2, p1

    move p1, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    :cond_4
    aput v0, v2, p1

    .line 208
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 227
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_0
    return-void

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 310
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 314
    array-length v2, v1

    .line 315
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v3, :cond_1

    const-string v3, "0"

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_3

    .line 319
    aget v2, v1, v3

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_5

    .line 326
    aget v2, v1, v3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v4, ", "

    .line 328
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v1, 0x5d

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
