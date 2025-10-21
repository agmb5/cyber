.class public Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field isDisabled:Z

.field lastSelected:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field multiple:Z

.field private final old:Lcom/badlogic/gdx/utils/OrderedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field private programmaticChangeEvents:Z

.field required:Z

.field final selected:Lcom/badlogic/gdx/utils/OrderedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field private toggle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    .line 19
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 148
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    :goto_0
    return-void

    .line 142
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 155
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 156
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 158
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v2, :cond_4

    .line 161
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_1

    .line 164
    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 165
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 168
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void
.end method

.method protected changed()V
    .locals 0

    return-void
.end method

.method public choose(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 36
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void

    .line 41
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    goto :goto_1

    .line 45
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v0

    if-nez v0, :cond_7

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 58
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void

    .line 47
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    move v2, v1

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_8

    if-nez v2, :cond_8

    .line 58
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void

    .line 51
    :cond_8
    :try_start_3
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 53
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 54
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_2

    .line 56
    :cond_9
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    :goto_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    throw p1

    .line 35
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method cleanup()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 205
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 209
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fireChangeEvent()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    throw v1
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLastSelected()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiple()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    return v0
.end method

.method public getRequired()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    return v0
.end method

.method public getToggle()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    return v0
.end method

.method public hasItems()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public items()Lcom/badlogic/gdx/utils/OrderedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 178
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    :goto_0
    return-void

    .line 172
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 185
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 186
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 188
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v2, :cond_4

    .line 191
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 195
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 198
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void
.end method

.method revert()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll(Lcom/badlogic/gdx/utils/OrderedSet;)V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    .line 110
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_0

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void

    .line 105
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 124
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 125
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 127
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v2, :cond_4

    .line 130
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_1

    .line 132
    :cond_3
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_4

    .line 133
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 137
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    return-void
.end method

.method public setMultiple(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    return-void
.end method

.method public setRequired(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    return-void
.end method

.method public setToggle(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    return-void
.end method

.method public size()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    return v0
.end method

.method snapshot()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll(Lcom/badlogic/gdx/utils/OrderedSet;)V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
