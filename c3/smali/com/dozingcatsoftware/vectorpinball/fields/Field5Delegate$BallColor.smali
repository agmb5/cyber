.class final enum Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;
.super Ljava/lang/Enum;
.source "Field5Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BallColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

.field public static final enum BLUE:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

.field public static final enum GREEN:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

.field public static final enum RED:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

.field public static final enum YELLOW:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const-string v1, "BLUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->BLUE:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    new-instance v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const-string v3, "RED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->RED:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    new-instance v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const-string v5, "YELLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->YELLOW:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    new-instance v5, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const-string v7, "GREEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->GREEN:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->$VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;
    .locals 1

    .line 21
    const-class v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    return-object p0
.end method

.method public static values()[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;
    .locals 1

    .line 21
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->$VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    invoke-virtual {v0}, [Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    return-object v0
.end method
