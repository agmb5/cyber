.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "Button.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    }
.end annotation


# instance fields
.field buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

.field private clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field isChecked:Z

.field isDisabled:Z

.field private programmaticChangeEvents:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    .line 85
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    .line 71
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 73
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 74
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    .line 111
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    .line 66
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {p0, p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    .line 78
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 79
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    .line 53
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 54
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 55
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    .line 60
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 61
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 62
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2

    .line 99
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2

    .line 103
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    return-void
.end method

.method private initialize()V
    .locals 1

    .line 89
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 90
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 7

    .line 210
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->validate()V

    .line 212
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 215
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetX:F

    .line 217
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetY:F

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOffsetX:F

    .line 220
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOffsetY:F

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetX:F

    .line 223
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetY:F

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, v0, v2

    if-nez v4, :cond_3

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 227
    :goto_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v4

    if-eqz v2, :cond_4

    const/4 v5, 0x0

    .line 229
    :goto_3
    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_4

    .line 230
    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->moveBy(FF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 232
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    if-eqz v2, :cond_5

    .line 234
    :goto_4
    iget p1, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, p1, :cond_5

    .line 235
    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    neg-float p2, v0

    neg-float v2, v1

    invoke-virtual {p1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->moveBy(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 238
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 239
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed()Z

    move-result p1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isPressed()Z

    move-result p2

    if-eq p1, p2, :cond_6

    .line 240
    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_6
    return-void
.end method

.method protected getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isOver()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->hasKeyboardFocus()Z

    move-result v0

    .line 200
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_5

    .line 201
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedFocused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedFocused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 202
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 203
    :cond_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isOver()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    :cond_7
    if-eqz v0, :cond_8

    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->focused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->focused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getButtonGroup()Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    return-object v0
.end method

.method public getClickListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    return-object v0
.end method

.method public getMinHeight()F
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .line 252
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefHeight()F

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_2
    return v0
.end method

.method public getPrefWidth()F
    .locals 2

    .line 244
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_2
    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    return v0
.end method

.method public isOver()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isVisualPressed()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(ZZ)V

    return-void
.end method

.method setChecked(ZZ)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->canCheck(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 121
    :cond_1
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-eqz p2, :cond_3

    .line 124
    const-class p2, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 125
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v0

    if-eqz v0, :cond_2

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    .line 126
    :cond_2
    invoke-static {p2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 169
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 171
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-void

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toggle()V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    return-void
.end method
