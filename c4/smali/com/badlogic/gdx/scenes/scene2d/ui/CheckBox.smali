.class public Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;
    }
.end annotation


# instance fields
.field private image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private imageCell:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->clearChildren()V

    .line 45
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->imageCell:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 47
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/16 p2, 0x8

    .line 48
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 49
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->setSize(FF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    .line 35
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    .line 39
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOffDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    .line 73
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isOver()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 74
    :goto_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_5

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_2

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 81
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 82
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method public getImage()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object v0
.end method

.method public getImageCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->imageCell:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    move-result-object v0

    return-object v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1

    .line 53
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    .line 55
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style must be a CheckBoxStyle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
