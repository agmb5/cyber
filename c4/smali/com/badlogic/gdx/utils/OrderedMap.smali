.class public Lcom/badlogic/gdx/utils/OrderedMap;
.super Lcom/badlogic/gdx/utils/ObjectMap;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;,
        Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;,
        Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final keys:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    .line 55
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 63
    new-instance p2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object p2, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 69
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public alter(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)Z"
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/OrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public alterIndex(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)Z"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 128
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/OrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p2, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 141
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 136
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear(I)V

    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 157
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 160
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->reset()V

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    return-object v0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->reset()V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    return-object v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 201
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 204
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->reset()V

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    return-object v0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->reset()V

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    return-object v0
.end method

.method public orderedKeys()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 75
    iget-object p1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->valueTable:[Ljava/lang/Object;

    aget-object p1, p1, v0

    .line 76
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 81
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 82
    iget-object p2, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 83
    iget p1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/OrderedMap;->threshold:I

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keyTable:[Ljava/lang/Object;

    array-length p1, p1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->resize(I)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Lcom/badlogic/gdx/utils/OrderedMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TK;>(",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "TT;+TV;>;)V"
        }
    .end annotation

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/OrderedMap;->ensureCapacity(I)V

    .line 89
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 90
    iget-object v1, p1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 91
    aget-object v3, v0, v2

    .line 92
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 98
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "{}"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_2

    const/16 v1, 0x7b

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    .line 223
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v2, v3, :cond_6

    .line 224
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-lez v2, :cond_3

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v5, "(this)"

    if-ne v4, p0, :cond_4

    move-object v6, v5

    goto :goto_2

    :cond_4
    move-object v6, v4

    .line 226
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    .line 227
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, v4

    .line 229
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    const/16 p1, 0x7d

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 179
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 182
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->reset()V

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    return-object v0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->reset()V

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    return-object v0
.end method
