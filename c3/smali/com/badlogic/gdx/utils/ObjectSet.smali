.class public Lcom/badlogic/gdx/utils/ObjectSet;
.super Ljava/lang/Object;
.source "ObjectSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 83
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    .line 85
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 86
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 87
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    int-to-long v0, p2

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->shift:I

    .line 90
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    return-void

    .line 82
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "+TT;>;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 96
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget p1, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    return-void
.end method

.method private addResize(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 175
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->place(Ljava/lang/Object;)I

    move-result v1

    .line 176
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 177
    aput-object p1, v0, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 175
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private resize(I)V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v1, p1

    .line 267
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 268
    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    int-to-long v1, v1

    .line 269
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->shift:I

    .line 270
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 272
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 274
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 276
    aget-object v2, v1, p1

    if-eqz v2, :cond_0

    .line 277
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->addResize(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static tableSize(IF)I
    .locals 3

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    int-to-float v1, p0

    div-float/2addr v1, p1

    float-to-double v1, v1

    .line 356
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_0

    return p1

    .line 357
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The required capacity is too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capacity must be >= 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;"
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    .line 350
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 136
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 137
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt p1, v0, :cond_1

    array-length p1, v2

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_1
    return v1
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)Z

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;II)V"
        }
    .end annotation

    add-int v0, p2, p3

    .line 146
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v0, v1, :cond_0

    .line 148
    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)Z

    return-void

    .line 147
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

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 164
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->ensureCapacity(I)V

    .line 165
    iget-object p1, p1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 166
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 167
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .line 152
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public addAll([Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)Z"
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->ensureCapacity(I)V

    .line 157
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 159
    aget-object v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public clear()V
    .locals 2

    .line 237
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 225
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 231
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 261
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 293
    instance-of v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 294
    :cond_0
    check-cast p1, Lcom/badlogic/gdx/utils/ObjectSet;

    .line 295
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-eq v0, v2, :cond_1

    return v1

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 297
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 298
    aget-object v4, v0, v3

    if-eqz v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public first()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 253
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 254
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v0, v0, v2

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ObjectSet is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 247
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 283
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 284
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 285
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 286
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 287
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 209
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<",
            "TT;>;"
        }
    .end annotation

    .line 331
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    .line 334
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 340
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    return-object v0

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    .line 343
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    return-object v0
.end method

.method locateKey(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 123
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->place(Ljava/lang/Object;)I

    move-result v1

    .line 124
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    .line 126
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 123
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v1, v2

    goto :goto_0

    .line 121
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public notEmpty()Z
    .locals 1

    .line 204
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected place(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 188
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    add-int/lit8 v2, p1, 0x1

    :goto_0
    and-int/2addr v2, v1

    .line 189
    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 190
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->place(Ljava/lang/Object;)I

    move-result v4

    sub-int v5, v2, v4

    and-int/2addr v5, v1

    sub-int v4, p1, v4

    and-int/2addr v4, v1

    if-le v5, v4, :cond_1

    .line 192
    aput-object v3, v0, p1

    move p1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 197
    aput-object v1, v0, p1

    .line 198
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    return v0
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 217
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_0
    return-void

    .line 216
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
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 307
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 310
    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const-string v4, "(this)"

    if-lez v2, :cond_3

    .line 312
    aget-object v2, v1, v3

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    if-ne v2, p0, :cond_2

    move-object v2, v4

    .line 314
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_6

    .line 318
    aget-object v3, v1, v2

    if-nez v3, :cond_4

    goto :goto_2

    .line 320
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, p0, :cond_5

    move-object v3, v4

    .line 321
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    move v3, v2

    goto :goto_1

    .line 323
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
