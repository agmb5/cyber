.class public Lcom/badlogic/gdx/utils/OrderedSet;
.super Lcom/badlogic/gdx/utils/ObjectSet;
.source "OrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

.field iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(I)V

    .line 58
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 53
    new-instance p2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object p2, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "+TT;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/OrderedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation

    .line 223
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    .line 224
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll([Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 75
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    return v1
.end method

.method public addAll(Lcom/badlogic/gdx/utils/OrderedSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 85
    iget v0, p1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/OrderedSet;->ensureCapacity(I)V

    .line 86
    iget-object v0, p1, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 87
    iget-object p1, p1, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 88
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public alter(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 113
    :cond_1
    invoke-super {p0, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public alterIndex(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-super {p0, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

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

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 139
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 134
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->clear(I)V

    return-void
.end method

.method public bridge synthetic iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator<",
            "TT;>;"
        }
    .end annotation

    .line 147
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;-><init>(Lcom/badlogic/gdx/utils/OrderedSet;)V

    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;-><init>(Lcom/badlogic/gdx/utils/OrderedSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;-><init>(Lcom/badlogic/gdx/utils/OrderedSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->reset()V

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    return-object v0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->reset()V

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator1:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->iterator2:Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public orderedItems()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 92
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    const/4 p1, 0x1

    return p1
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    .line 99
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 165
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 169
    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 170
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
