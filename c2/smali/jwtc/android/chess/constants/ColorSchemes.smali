.class public Ljwtc/android/chess/constants/ColorSchemes;
.super Ljava/lang/Object;
.source "ColorSchemes.java"


# static fields
.field private static colorScheme:[[I

.field public static isRotated:Z

.field public static selectedColorScheme:I

.field public static showCoords:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Ljwtc/android/chess/constants/ColorSchemes;->colorScheme:[[I

    const/4 v2, 0x0

    .line 5
    sput v2, Ljwtc/android/chess/constants/ColorSchemes;->selectedColorScheme:I

    .line 6
    sput-boolean v2, Ljwtc/android/chess/constants/ColorSchemes;->showCoords:Z

    .line 7
    sput-boolean v2, Ljwtc/android/chess/constants/ColorSchemes;->isRotated:Z

    .line 11
    aget-object v3, v1, v2

    const v4, -0x2153a3

    aput v4, v3, v2

    .line 12
    aget-object v3, v1, v2

    const v4, -0x61c40

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 13
    aget-object v3, v1, v2

    const v4, -0xc12b5

    aput v4, v3, v0

    .line 14
    aget-object v3, v1, v2

    const/4 v6, 0x3

    const/high16 v7, -0x34000000    # -3.3554432E7f

    aput v7, v3, v6

    .line 17
    aget-object v3, v1, v5

    const v8, -0xd79d75

    aput v8, v3, v2

    .line 18
    aget-object v3, v1, v5

    const v8, -0x824216

    aput v8, v3, v5

    .line 19
    aget-object v3, v1, v5

    const v8, -0x60210d

    aput v8, v3, v0

    .line 20
    aget-object v3, v1, v5

    const v8, -0x33000001    # -1.3421772E8f

    aput v8, v3, v6

    .line 23
    aget-object v3, v1, v0

    const v9, -0x95768c

    aput v9, v3, v2

    .line 24
    aget-object v3, v1, v0

    const v9, -0x714a65

    aput v9, v3, v5

    .line 25
    aget-object v3, v1, v0

    const v9, -0x671a55

    aput v9, v3, v0

    .line 26
    aget-object v3, v1, v0

    aput v8, v3, v6

    .line 29
    aget-object v3, v1, v6

    const v9, -0x3f3f40

    aput v9, v3, v2

    .line 30
    aget-object v3, v1, v6

    const/4 v9, -0x1

    aput v9, v3, v5

    .line 31
    aget-object v3, v1, v6

    aput v4, v3, v0

    .line 32
    aget-object v3, v1, v6

    aput v7, v3, v6

    const/4 v3, 0x4

    .line 35
    aget-object v7, v1, v3

    const v9, -0x8fb2cd

    aput v9, v7, v2

    .line 36
    aget-object v7, v1, v3

    const v9, -0x508fe3

    aput v9, v7, v5

    .line 37
    aget-object v7, v1, v3

    aput v4, v7, v0

    .line 38
    aget-object v3, v1, v3

    aput v8, v3, v6

    const/4 v3, 0x5

    .line 42
    aget-object v4, v1, v3

    const v7, -0x37adae

    aput v7, v4, v2

    .line 43
    aget-object v2, v1, v3

    const v4, -0x2f6566

    aput v4, v2, v5

    .line 44
    aget-object v2, v1, v3

    const v4, 0xf3ed4b

    aput v4, v2, v0

    .line 45
    aget-object v0, v1, v3

    aput v8, v0, v6

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDark()I
    .locals 2

    .line 53
    sget-object v0, Ljwtc/android/chess/constants/ColorSchemes;->colorScheme:[[I

    sget v1, Ljwtc/android/chess/constants/ColorSchemes;->selectedColorScheme:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static getHightlightColor()I
    .locals 2

    .line 57
    sget-object v0, Ljwtc/android/chess/constants/ColorSchemes;->colorScheme:[[I

    sget v1, Ljwtc/android/chess/constants/ColorSchemes;->selectedColorScheme:I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public static getLight()I
    .locals 2

    .line 49
    sget-object v0, Ljwtc/android/chess/constants/ColorSchemes;->colorScheme:[[I

    sget v1, Ljwtc/android/chess/constants/ColorSchemes;->selectedColorScheme:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getSelectedColor()I
    .locals 2

    .line 61
    sget-object v0, Ljwtc/android/chess/constants/ColorSchemes;->colorScheme:[[I

    sget v1, Ljwtc/android/chess/constants/ColorSchemes;->selectedColorScheme:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method
