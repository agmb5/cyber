.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.source "ImageTextButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;
    }
.end annotation


# instance fields
.field private final image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;)V
    .locals 5

    .line 50
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 51
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    .line 53
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 56
    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 58
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v4, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 p1, 0x1

    .line 59
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 62
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 64
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 66
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->setSize(FF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    .line 40
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    .line 45
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    invoke-direct {p0, p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->updateImage()V

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getFontColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 143
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method protected getFontColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedDownFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedDownFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isOver()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedOverFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedOverFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->hasKeyboardFocus()Z

    move-result v0

    .line 131
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_5

    .line 132
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedFocusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedFocusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 134
    :cond_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isOver()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    :cond_7
    if-eqz v0, :cond_8

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getImage()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object v0
.end method

.method public getImageCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method protected getImageDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageCheckedDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageCheckedDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isOver()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageCheckedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageCheckedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 103
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageChecked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageChecked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 105
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isOver()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageUp:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method public getLabelCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getLabelCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 156
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1

    .line 70
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    if-eqz v0, :cond_2

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    .line 72
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 74
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->updateImage()V

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object p1

    .line 79
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getFontColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    :cond_1
    return-void

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style must be a ImageTextButtonStyle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 176
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    const-string v2, "ImageTextButton "

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 182
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateImage()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getImageDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-void
.end method
