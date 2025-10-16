.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;
.super Ljava/lang/Object;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextFieldStyle"
.end annotation


# instance fields
.field public background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

.field public focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

.field public font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public fontColor:Lcom/badlogic/gdx/graphics/Color;

.field public messageFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public messageFontColor:Lcom/badlogic/gdx/graphics/Color;

.field public selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 1102
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 1103
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 1104
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 1105
    iput-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 2

    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 1110
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 1111
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 1112
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 1114
    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 1115
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 1116
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 1117
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 1118
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 1120
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 1121
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    :cond_3
    return-void
.end method
