.class public Lcom/badlogic/gdx/utils/BooleanArray;
.super Ljava/lang/Object;
.source "BooleanArray.java"


# instance fields
.field public items:[Z

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 57
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 58
    iget-object p1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 48
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-void
.end method

.method public constructor <init>(Z[ZII)V
    .locals 1

    .line 72
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 73
    iput p4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 74
    iget-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Z)V
    .locals 3

    .line 64
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(Z[ZII)V

    return-void
.end method

.method public static varargs with([Z)Lcom/badlogic/gdx/utils/BooleanArray;
    .locals 1

    .line 375
    new-instance v0, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>([Z)V

    return-object v0
.end method


# virtual methods
.method public add(Z)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 79
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 80
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    return-void
.end method

.method public add(ZZ)V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 85
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-lt v2, v3, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 86
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 87
    aput-boolean p2, v0, p1

    add-int/lit8 v1, v1, 0x2

    .line 88
    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void
.end method

.method public add(ZZZ)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 93
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-lt v2, v3, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 94
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 95
    aput-boolean p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 96
    aput-boolean p3, v0, p1

    add-int/lit8 v1, v1, 0x3

    .line 97
    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void
.end method

.method public add(ZZZZ)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 102
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, 0x3

    array-length v3, v0

    if-lt v2, v3, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const v2, 0x3fe66666    # 1.8f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 103
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 104
    aput-boolean p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 105
    aput-boolean p3, v0, p1

    add-int/lit8 p1, v1, 0x3

    .line 106
    aput-boolean p4, v0, p1

    add-int/lit8 v1, v1, 0x4

    .line 107
    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .locals 2

    .line 111
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget p1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;II)V
    .locals 3

    add-int v0, p2, p3

    .line 115
    iget v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-gt v0, v1, :cond_0

    .line 117
    iget-object p1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    return-void

    .line 116
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

    iget p1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([Z)V
    .locals 2

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    return-void
.end method

.method public addAll([ZII)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 126
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v1, p3

    .line 127
    array-length v2, v0

    if-le v1, v2, :cond_0

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 128
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void
.end method

.method public ensureCapacity(I)[Z
    .locals 3

    if-ltz p1, :cond_1

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v0, p1

    .line 264
    iget-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length p1, p1

    if-le v0, p1, :cond_0

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object p1

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 335
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 336
    :cond_1
    instance-of v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;

    if-nez v1, :cond_2

    return v2

    .line 337
    :cond_2
    check-cast p1, Lcom/badlogic/gdx/utils/BooleanArray;

    .line 338
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-nez v1, :cond_3

    return v2

    .line 339
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 340
    iget v3, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eq v1, v3, :cond_4

    return v2

    .line 341
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget-object p1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    .line 343
    aget-boolean v5, v3, v4

    aget-boolean v6, p1, v4

    if-eq v5, v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public first()Z
    .locals 2

    .line 232
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Z
    .locals 3

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean p1, v0, p1

    return p1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 5

    .line 324
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    .line 327
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v2, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    .line 328
    aget-boolean v4, v0, v1

    if-eqz v4, :cond_1

    const/16 v4, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v4, 0x4d5

    :goto_1
    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public insert(IZ)V
    .locals 3

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-gt p1, v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 145
    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v1

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 147
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 149
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v2, v1, p1

    aput-boolean v2, v1, v0

    .line 150
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 151
    aput-boolean p2, v1, p1

    return-void

    .line 143
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public insertRange(II)V
    .locals 4

    .line 157
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-gt p1, v0, :cond_1

    add-int/2addr v0, p2

    .line 159
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    add-int/2addr p2, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void

    .line 157
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isEmpty()Z
    .locals 1

    .line 243
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 238
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()Z
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public pop()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public random()Z
    .locals 3

    .line 313
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-boolean v0, v2, v0

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/BooleanArray;)Z
    .locals 9

    .line 204
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 206
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 207
    iget v2, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v3, 0x0

    move v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 208
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/BooleanArray;->get(I)Z

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    .line 210
    aget-boolean v8, v1, v7

    if-ne v6, v8, :cond_0

    .line 211
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/utils/BooleanArray;->removeIndex(I)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eq v5, v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public removeIndex(I)Z
    .locals 4

    .line 175
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_1

    .line 176
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 177
    aget-boolean v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    .line 178
    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 179
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    .line 180
    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 182
    :cond_0
    aget-boolean v0, v1, v0

    aput-boolean v0, v1, p1

    :goto_0
    return v2

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRange(II)V
    .locals 4

    .line 188
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p2, v0, :cond_2

    if-gt p1, p2, :cond_1

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v2, v0, v1

    .line 192
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v3, :cond_0

    .line 193
    iget-object p2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 195
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 196
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    :goto_0
    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start can\'t be > end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected resize(I)[Z
    .locals 3

    .line 278
    new-array v0, p1, [Z

    .line 279
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 280
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v0
.end method

.method public reverse()V
    .locals 7

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 287
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    sub-int v4, v2, v3

    .line 289
    aget-boolean v5, v0, v3

    .line 290
    aget-boolean v6, v0, v4

    aput-boolean v6, v0, v3

    .line 291
    aput-boolean v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(IZ)V
    .locals 2

    .line 138
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aput-boolean p2, v0, p1

    return-void

    .line 138
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setSize(I)[Z
    .locals 3

    if-ltz p1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v0, v0

    if-le p1, v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 273
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 274
    iget-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object p1

    .line 271
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink()[Z
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v0
.end method

.method public shuffle()V
    .locals 5

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 297
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 298
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 299
    aget-boolean v3, v0, v1

    .line 300
    aget-boolean v4, v0, v2

    aput-boolean v4, v0, v1

    .line 301
    aput-boolean v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public swap(II)V
    .locals 3

    .line 165
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_1

    if-ge p2, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 168
    aget-boolean v1, v0, p1

    .line 169
    aget-boolean v2, v0, p2

    aput-boolean v2, v0, p1

    .line 170
    aput-boolean v1, v0, p2

    return-void

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toArray()[Z
    .locals 4

    .line 318
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    new-array v1, v0, [Z

    .line 319
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 348
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 350
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 351
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x0

    .line 352
    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 353
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 354
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 355
    aget-boolean v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    .line 357
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 358
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 362
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 364
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 365
    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 366
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v2, v3, :cond_1

    .line 367
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 368
    aget-boolean v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public truncate(I)V
    .locals 1

    .line 308
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    :cond_0
    return-void
.end method
