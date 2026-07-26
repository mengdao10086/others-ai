.class final Lretrofit2/RequestFactory$Builder;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field contentType:Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field gotBody:Z

.field gotField:Z

.field gotPart:Z

.field gotPath:Z

.field gotQuery:Z

.field gotQueryMap:Z

.field gotQueryName:Z

.field gotUrl:Z

.field hasBody:Z

.field headers:Lokhttp3/Headers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field httpMethod:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field isFormEncoded:Z

.field isKotlinSuspendFunction:Z

.field isMultipart:Z

.field final method:Ljava/lang/reflect/Method;

.field final methodAnnotations:[Ljava/lang/annotation/Annotation;

.field final parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

.field parameterHandlers:[Lretrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/reflect/Type;

.field relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field relativeUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final retrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 143
    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 144
    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 173
    iput-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    .line 174
    invoke-virtual {p2}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 175
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    .line 176
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private static boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 847
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 848
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_e

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 849
    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_15

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 850
    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1c

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 851
    :cond_1c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_23

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 852
    :cond_23
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2a

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 853
    :cond_2a
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_31

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 854
    :cond_31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_37

    const-class p0, Ljava/lang/Short;

    :cond_37
    return-object p0
.end method

.method private parseHeaders([Ljava/lang/String;)Lokhttp3/Headers;
    .registers 9

    .line 297
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 298
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_5d

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    .line 299
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_50

    if-eqz v5, :cond_50

    .line 300
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_50

    .line 304
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 305
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 306
    const-string v5, "Content-Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 308
    :try_start_35
    invoke-static {v4}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    iput-object v5, p0, Lretrofit2/RequestFactory$Builder;->contentType:Lokhttp3/MediaType;
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_3b} :catch_3c

    goto :goto_4d

    :catch_3c
    move-exception p1

    .line 310
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Malformed content type: %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 313
    :cond_4a
    invoke-virtual {v0, v6, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 301
    :cond_50
    iget-object p1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 316
    :cond_5d
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p1

    return-object p1
.end method

.method private parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 263
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    if-nez v0, :cond_49

    .line 270
    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    .line 271
    iput-boolean p3, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    :cond_f
    const/16 p1, 0x3f

    .line 278
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_40

    .line 279
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ge p1, p3, :cond_40

    add-int/lit8 p1, p1, 0x1

    .line 281
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 282
    sget-object p3, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 283
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_33

    goto :goto_40

    .line 284
    :cond_33
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 292
    :cond_40
    :goto_40
    iput-object p2, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    .line 293
    invoke-static {p2}, Lretrofit2/RequestFactory$Builder;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->relativeUrlParamNames:Ljava/util/Set;

    return-void

    .line 264
    :cond_49
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "Only one HTTP method is allowed. Found: %s and %s."

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V
    .registers 6

    .line 226
    instance-of v0, p1, Lretrofit2/http/DELETE;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 227
    check-cast p1, Lretrofit2/http/DELETE;

    invoke-interface {p1}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DELETE"

    invoke-direct {p0, v0, p1, v1}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_d7

    .line 228
    :cond_12
    instance-of v0, p1, Lretrofit2/http/GET;

    if-eqz v0, :cond_23

    .line 229
    check-cast p1, Lretrofit2/http/GET;

    invoke-interface {p1}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    invoke-direct {p0, v0, p1, v1}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_d7

    .line 230
    :cond_23
    instance-of v0, p1, Lretrofit2/http/HEAD;

    if-eqz v0, :cond_34

    .line 231
    check-cast p1, Lretrofit2/http/HEAD;

    invoke-interface {p1}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-direct {p0, v0, p1, v1}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_d7

    .line 232
    :cond_34
    instance-of v0, p1, Lretrofit2/http/PATCH;

    const/4 v2, 0x1

    if-eqz v0, :cond_46

    .line 233
    check-cast p1, Lretrofit2/http/PATCH;

    invoke-interface {p1}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PATCH"

    invoke-direct {p0, v0, p1, v2}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_d7

    .line 234
    :cond_46
    instance-of v0, p1, Lretrofit2/http/POST;

    if-eqz v0, :cond_57

    .line 235
    check-cast p1, Lretrofit2/http/POST;

    invoke-interface {p1}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    invoke-direct {p0, v0, p1, v2}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_d7

    .line 236
    :cond_57
    instance-of v0, p1, Lretrofit2/http/PUT;

    if-eqz v0, :cond_68

    .line 237
    check-cast p1, Lretrofit2/http/PUT;

    invoke-interface {p1}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUT"

    invoke-direct {p0, v0, p1, v2}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_d7

    .line 238
    :cond_68
    instance-of v0, p1, Lretrofit2/http/OPTIONS;

    if-eqz v0, :cond_78

    .line 239
    check-cast p1, Lretrofit2/http/OPTIONS;

    invoke-interface {p1}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    invoke-direct {p0, v0, p1, v1}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_d7

    .line 240
    :cond_78
    instance-of v0, p1, Lretrofit2/http/HTTP;

    if-eqz v0, :cond_8e

    .line 241
    check-cast p1, Lretrofit2/http/HTTP;

    .line 242
    invoke-interface {p1}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lretrofit2/http/HTTP;->hasBody()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_d7

    .line 243
    :cond_8e
    instance-of v0, p1, Lretrofit2/http/Headers;

    if-eqz v0, :cond_ad

    .line 244
    check-cast p1, Lretrofit2/http/Headers;

    invoke-interface {p1}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object p1

    .line 245
    array-length v0, p1

    if-eqz v0, :cond_a2

    .line 248
    invoke-direct {p0, p1}, Lretrofit2/RequestFactory$Builder;->parseHeaders([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->headers:Lokhttp3/Headers;

    goto :goto_d7

    .line 246
    :cond_a2
    iget-object p1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v0, "@Headers annotation is empty."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 249
    :cond_ad
    instance-of v0, p1, Lretrofit2/http/Multipart;

    const-string v3, "Only one encoding annotation is allowed."

    if-eqz v0, :cond_c3

    .line 250
    iget-boolean p1, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez p1, :cond_ba

    .line 253
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    goto :goto_d7

    .line 251
    :cond_ba
    iget-object p1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v3, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 254
    :cond_c3
    instance-of p1, p1, Lretrofit2/http/FormUrlEncoded;

    if-eqz p1, :cond_d7

    .line 255
    iget-boolean p1, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez p1, :cond_ce

    .line 258
    iput-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    goto :goto_d7

    .line 256
    :cond_ce
    iget-object p1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v3, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_d7
    :goto_d7
    return-void
.end method

.method private parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Z)Lretrofit2/ParameterHandler;
    .registers 11
    .param p3    # [Ljava/lang/annotation/Annotation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_23

    .line 323
    array-length v2, p3

    move v3, v0

    move-object v4, v1

    :goto_7
    if-ge v3, v2, :cond_24

    aget-object v5, p3, v3

    .line 325
    invoke-direct {p0, p1, p2, p3, v5}, Lretrofit2/RequestFactory$Builder;->parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_15

    :cond_12
    if-nez v4, :cond_18

    move-object v4, v5

    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 332
    :cond_18
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "Multiple Retrofit annotations found, only one allowed."

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_23
    move-object v4, v1

    :cond_24
    if-nez v4, :cond_3f

    if-eqz p4, :cond_34

    .line 343
    :try_start_28
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lkotlin/coroutines/Continuation;

    if-ne p2, p3, :cond_34

    const/4 p2, 0x1

    .line 344
    iput-boolean p2, p0, Lretrofit2/RequestFactory$Builder;->isKotlinSuspendFunction:Z
    :try_end_33
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_28 .. :try_end_33} :catch_34

    return-object v1

    .line 350
    :catch_34
    :cond_34
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "No Retrofit annotation found."

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3f
    return-object v4
.end method

.method private parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 359
    instance-of v0, p4, Lretrofit2/http/Url;

    const-string v1, "@Path parameters may not be used with @Url."

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_9b

    .line 360
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 361
    iget-boolean p3, p0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-nez p3, :cond_90

    .line 364
    iget-boolean p3, p0, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    if-nez p3, :cond_87

    .line 367
    iget-boolean p3, p0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    if-nez p3, :cond_7c

    .line 370
    iget-boolean p3, p0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    if-nez p3, :cond_71

    .line 373
    iget-boolean p3, p0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    if-nez p3, :cond_66

    .line 376
    iget-object p3, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-nez p3, :cond_57

    .line 380
    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    .line 382
    const-class p3, Lokhttp3/HttpUrl;

    if-eq p2, p3, :cond_4f

    if-eq p2, v2, :cond_4f

    const-class p3, Ljava/net/URI;

    if-eq p2, p3, :cond_4f

    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_44

    check-cast p2, Ljava/lang/Class;

    .line 385
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.net.Uri"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    goto :goto_4f

    .line 388
    :cond_44
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 386
    :cond_4f
    :goto_4f
    new-instance p2, Lretrofit2/ParameterHandler$RelativeUrl;

    iget-object p3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {p2, p3, p1}, Lretrofit2/ParameterHandler$RelativeUrl;-><init>(Ljava/lang/reflect/Method;I)V

    return-object p2

    .line 377
    :cond_57
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    iget-object p3, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "@Url cannot be used with @%s URL"

    invoke-static {p2, p1, p4, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 374
    :cond_66
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "A @Url parameter must not come after a @QueryMap."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 371
    :cond_71
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "A @Url parameter must not come after a @QueryName."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 368
    :cond_7c
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "A @Url parameter must not come after a @Query."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 365
    :cond_87
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 362
    :cond_90
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "Multiple @Url method annotations found."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 394
    :cond_9b
    instance-of v0, p4, Lretrofit2/http/Path;

    if-eqz v0, :cond_10e

    .line 395
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 396
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    if-nez v0, :cond_103

    .line 399
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    if-nez v0, :cond_f8

    .line 402
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    if-nez v0, :cond_ed

    .line 405
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-nez v0, :cond_e4

    .line 408
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_d5

    .line 412
    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    .line 414
    check-cast p4, Lretrofit2/http/Path;

    .line 415
    invoke-interface {p4}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-direct {p0, p1, v3}, Lretrofit2/RequestFactory$Builder;->validatePathName(ILjava/lang/String;)V

    .line 418
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4

    .line 419
    new-instance p2, Lretrofit2/ParameterHandler$Path;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-interface {p4}, Lretrofit2/http/Path;->encoded()Z

    move-result v5

    move-object v0, p2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lretrofit2/ParameterHandler$Path;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Lretrofit2/Converter;Z)V

    return-object p2

    .line 409
    :cond_d5
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    iget-object p3, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "@Path can only be used with relative url on @%s"

    invoke-static {p2, p1, p4, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 406
    :cond_e4
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 403
    :cond_ed
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "A @Path parameter must not come after a @QueryMap."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 400
    :cond_f8
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "A @Path parameter must not come after a @QueryName."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 397
    :cond_103
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "A @Path parameter must not come after a @Query."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 421
    :cond_10e
    instance-of v0, p4, Lretrofit2/http/Query;

    const-string v1, "<String>)"

    const-string v5, " must include generic type (e.g., "

    const-class v6, Ljava/lang/Iterable;

    if-eqz v0, :cond_19b

    .line 422
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 423
    check-cast p4, Lretrofit2/http/Query;

    .line 424
    invoke-interface {p4}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-interface {p4}, Lretrofit2/http/Query;->encoded()Z

    move-result p4

    .line 427
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 428
    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    .line 429
    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_171

    .line 430
    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_14b

    .line 439
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 440
    invoke-static {v4, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 441
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 442
    new-instance p2, Lretrofit2/ParameterHandler$Query;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 431
    :cond_14b
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    .line 431
    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 443
    :cond_171
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_18f

    .line 444
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 445
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 446
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 447
    new-instance p2, Lretrofit2/ParameterHandler$Query;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 449
    :cond_18f
    iget-object p1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 450
    new-instance p2, Lretrofit2/ParameterHandler$Query;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object p2

    .line 453
    :cond_19b
    instance-of v0, p4, Lretrofit2/http/QueryName;

    if-eqz v0, :cond_21e

    .line 454
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 455
    check-cast p4, Lretrofit2/http/QueryName;

    .line 456
    invoke-interface {p4}, Lretrofit2/http/QueryName;->encoded()Z

    move-result p4

    .line 458
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 459
    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    .line 460
    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 461
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1ce

    .line 470
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 471
    invoke-static {v4, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 472
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 473
    new-instance p2, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {p2, p1, p4}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 462
    :cond_1ce
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    .line 462
    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 474
    :cond_1f4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_212

    .line 475
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 476
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 477
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 478
    new-instance p2, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {p2, p1, p4}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 480
    :cond_212
    iget-object p1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 481
    new-instance p2, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {p2, p1, p4}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    return-object p2

    .line 484
    :cond_21e
    instance-of v0, p4, Lretrofit2/http/QueryMap;

    const-string v7, "Map must include generic types (e.g., Map<String, String>)"

    const-class v8, Ljava/util/Map;

    if-eqz v0, :cond_28b

    .line 485
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 486
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 487
    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    .line 488
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_280

    .line 491
    invoke-static {p2, v0, v8}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 492
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_277

    .line 496
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 497
    invoke-static {v4, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-ne v2, v0, :cond_25d

    .line 501
    invoke-static {v3, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 502
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    .line 504
    new-instance p3, Lretrofit2/ParameterHandler$QueryMap;

    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    check-cast p4, Lretrofit2/http/QueryMap;

    .line 505
    invoke-interface {p4}, Lretrofit2/http/QueryMap;->encoded()Z

    move-result p4

    invoke-direct {p3, v0, p1, p2, p4}, Lretrofit2/ParameterHandler$QueryMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Z)V

    return-object p3

    .line 499
    :cond_25d
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "@QueryMap keys must be of type String: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 493
    :cond_277
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v7, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 489
    :cond_280
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@QueryMap parameter type must be Map."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 507
    :cond_28b
    instance-of v0, p4, Lretrofit2/http/Header;

    if-eqz v0, :cond_30c

    .line 508
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 509
    check-cast p4, Lretrofit2/http/Header;

    .line 510
    invoke-interface {p4}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object p4

    .line 512
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 513
    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2e2

    .line 514
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_2bc

    .line 523
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 524
    invoke-static {v4, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 525
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 526
    new-instance p2, Lretrofit2/ParameterHandler$Header;

    invoke-direct {p2, p4, p1}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {p2}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 515
    :cond_2bc
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    .line 515
    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 527
    :cond_2e2
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_300

    .line 528
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 529
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 530
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 531
    new-instance p2, Lretrofit2/ParameterHandler$Header;

    invoke-direct {p2, p4, p1}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {p2}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 533
    :cond_300
    iget-object p1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 534
    new-instance p2, Lretrofit2/ParameterHandler$Header;

    invoke-direct {p2, p4, p1}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    return-object p2

    .line 537
    :cond_30c
    instance-of v0, p4, Lretrofit2/http/HeaderMap;

    if-eqz v0, :cond_379

    .line 538
    const-class p4, Lokhttp3/Headers;

    if-ne p2, p4, :cond_31c

    .line 539
    new-instance p2, Lretrofit2/ParameterHandler$Headers;

    iget-object p3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {p2, p3, p1}, Lretrofit2/ParameterHandler$Headers;-><init>(Ljava/lang/reflect/Method;I)V

    return-object p2

    .line 542
    :cond_31c
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 543
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    .line 544
    invoke-virtual {v8, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_36e

    .line 547
    invoke-static {p2, p4, v8}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 548
    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_365

    .line 552
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 553
    invoke-static {v4, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p4

    if-ne v2, p4, :cond_34b

    .line 557
    invoke-static {v3, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 558
    iget-object p4, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p4, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    .line 560
    new-instance p3, Lretrofit2/ParameterHandler$HeaderMap;

    iget-object p4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {p3, p4, p1, p2}, Lretrofit2/ParameterHandler$HeaderMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;)V

    return-object p3

    .line 555
    :cond_34b
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@HeaderMap keys must be of type String: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 549
    :cond_365
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v7, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 545
    :cond_36e
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@HeaderMap parameter type must be Map."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 562
    :cond_379
    instance-of v0, p4, Lretrofit2/http/Field;

    if-eqz v0, :cond_40f

    .line 563
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 564
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_404

    .line 567
    check-cast p4, Lretrofit2/http/Field;

    .line 568
    invoke-interface {p4}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-interface {p4}, Lretrofit2/http/Field;->encoded()Z

    move-result p4

    .line 571
    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 573
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 574
    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3da

    .line 575
    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3b4

    .line 584
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 585
    invoke-static {v4, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 586
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 587
    new-instance p2, Lretrofit2/ParameterHandler$Field;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 576
    :cond_3b4
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    .line 576
    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 588
    :cond_3da
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_3f8

    .line 589
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 590
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 591
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 592
    new-instance p2, Lretrofit2/ParameterHandler$Field;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 594
    :cond_3f8
    iget-object p1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 595
    new-instance p2, Lretrofit2/ParameterHandler$Field;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object p2

    .line 565
    :cond_404
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@Field parameters can only be used with form encoding."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 598
    :cond_40f
    instance-of v0, p4, Lretrofit2/http/FieldMap;

    if-eqz v0, :cond_487

    .line 599
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 600
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_47c

    .line 604
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 605
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_471

    .line 608
    invoke-static {p2, v0, v8}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 609
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_468

    .line 613
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 614
    invoke-static {v4, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-ne v2, v0, :cond_44e

    .line 618
    invoke-static {v3, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 619
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    .line 621
    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 622
    new-instance p3, Lretrofit2/ParameterHandler$FieldMap;

    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    check-cast p4, Lretrofit2/http/FieldMap;

    .line 623
    invoke-interface {p4}, Lretrofit2/http/FieldMap;->encoded()Z

    move-result p4

    invoke-direct {p3, v0, p1, p2, p4}, Lretrofit2/ParameterHandler$FieldMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Z)V

    return-object p3

    .line 616
    :cond_44e
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "@FieldMap keys must be of type String: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 610
    :cond_468
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v7, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 606
    :cond_471
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@FieldMap parameter type must be Map."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 601
    :cond_47c
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@FieldMap parameters can only be used with form encoding."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 625
    :cond_487
    instance-of v0, p4, Lretrofit2/http/Part;

    const-class v9, Lokhttp3/MultipartBody$Part;

    if-eqz v0, :cond_60a

    .line 626
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 627
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v0, :cond_5ff

    .line 631
    check-cast p4, Lretrofit2/http/Part;

    .line 632
    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 634
    invoke-interface {p4}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 636
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_52a

    .line 637
    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string p4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz p3, :cond_4f8

    .line 638
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_4d2

    .line 647
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 648
    invoke-static {v4, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 649
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v9, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_4c9

    .line 655
    sget-object p1, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {p1}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 650
    :cond_4c9
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 639
    :cond_4d2
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    .line 639
    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 656
    :cond_4f8
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_518

    .line 657
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 658
    invoke-virtual {v9, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_50f

    .line 664
    sget-object p1, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {p1}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 659
    :cond_50f
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 665
    :cond_518
    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_521

    .line 666
    sget-object p1, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    return-object p1

    .line 668
    :cond_521
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 674
    :cond_52a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "form-data; name=\""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Content-Transfer-Encoding"

    .line 679
    invoke-interface {p4}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object p4

    const-string v7, "Content-Disposition"

    filled-new-array {v7, v0, v3, p4}, [Ljava/lang/String;

    move-result-object p4

    .line 675
    invoke-static {p4}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object p4

    .line 681
    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v3, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v0, :cond_5af

    .line 682
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_589

    .line 691
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 692
    invoke-static {v4, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 693
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_580

    .line 700
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 701
    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    .line 702
    new-instance p3, Lretrofit2/ParameterHandler$Part;

    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {p3, v0, p1, p4, p2}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {p3}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 694
    :cond_580
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v3, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 683
    :cond_589
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    .line 683
    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 703
    :cond_5af
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5e0

    .line 704
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 705
    invoke-virtual {v9, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5d7

    .line 712
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 713
    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    .line 714
    new-instance p3, Lretrofit2/ParameterHandler$Part;

    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {p3, v0, p1, p4, p2}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {p3}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 706
    :cond_5d7
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v3, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 715
    :cond_5e0
    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5f6

    .line 722
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 723
    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    .line 724
    new-instance p3, Lretrofit2/ParameterHandler$Part;

    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {p3, v0, p1, p4, p2}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    return-object p3

    .line 716
    :cond_5f6
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v3, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 628
    :cond_5ff
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@Part parameters can only be used with multipart encoding."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 728
    :cond_60a
    instance-of v0, p4, Lretrofit2/http/PartMap;

    if-eqz v0, :cond_699

    .line 729
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 730
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v0, :cond_68e

    .line 734
    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 735
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 736
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_683

    .line 739
    invoke-static {p2, v0, v8}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 740
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_67a

    .line 744
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 746
    invoke-static {v4, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-ne v2, v0, :cond_660

    .line 751
    invoke-static {v3, p2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 752
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_655

    .line 760
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 761
    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    .line 763
    check-cast p4, Lretrofit2/http/PartMap;

    .line 764
    new-instance p3, Lretrofit2/ParameterHandler$PartMap;

    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-interface {p4}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, v0, p1, p2, p4}, Lretrofit2/ParameterHandler$PartMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Ljava/lang/String;)V

    return-object p3

    .line 753
    :cond_655
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 748
    :cond_660
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "@PartMap keys must be of type String: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 741
    :cond_67a
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v7, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 737
    :cond_683
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@PartMap parameter type must be Map."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 731
    :cond_68e
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@PartMap parameters can only be used with multipart encoding."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 766
    :cond_699
    instance-of v0, p4, Lretrofit2/http/Body;

    if-eqz v0, :cond_6e2

    .line 767
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 768
    iget-boolean p4, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez p4, :cond_6d7

    iget-boolean p4, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez p4, :cond_6d7

    .line 772
    iget-boolean p4, p0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    if-nez p4, :cond_6cc

    .line 778
    :try_start_6ac
    iget-object p4, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2
    :try_end_6b4
    .catch Ljava/lang/RuntimeException; {:try_start_6ac .. :try_end_6b4} :catch_6be

    .line 783
    iput-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    .line 784
    new-instance p3, Lretrofit2/ParameterHandler$Body;

    iget-object p4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-direct {p3, p4, p1, p2}, Lretrofit2/ParameterHandler$Body;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;)V

    return-object p3

    :catch_6be
    move-exception p3

    .line 781
    iget-object p4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v0, "Unable to create @Body converter for %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p4, p3, p1, v0, p2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 773
    :cond_6cc
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "Multiple @Body method annotations found."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 769
    :cond_6d7
    iget-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string p3, "@Body parameters cannot be used with form or multi-part encoding."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 786
    :cond_6e2
    instance-of p3, p4, Lretrofit2/http/Tag;

    if-eqz p3, :cond_739

    .line 787
    invoke-direct {p0, p1, p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 789
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    add-int/lit8 p3, p1, -0x1

    :goto_6ef
    if-ltz p3, :cond_733

    .line 791
    iget-object p4, p0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    aget-object p4, p4, p3

    .line 792
    instance-of v0, p4, Lretrofit2/ParameterHandler$Tag;

    if-eqz v0, :cond_730

    check-cast p4, Lretrofit2/ParameterHandler$Tag;

    iget-object p4, p4, Lretrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    .line 793
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_704

    goto :goto_730

    .line 794
    :cond_704
    iget-object p4, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Tag type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is duplicate of parameter #"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and would always overwrite its value."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    .line 794
    invoke-static {p4, p1, p2, p3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_730
    :goto_730
    add-int/lit8 p3, p3, -0x1

    goto :goto_6ef

    .line 805
    :cond_733
    new-instance p1, Lretrofit2/ParameterHandler$Tag;

    invoke-direct {p1, p2}, Lretrofit2/ParameterHandler$Tag;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_739
    const/4 p1, 0x0

    return-object p1
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 838
    sget-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 839
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 840
    :goto_b
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    .line 841
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1a
    return-object v0
.end method

.method private validatePathName(ILjava/lang/String;)V
    .registers 5

    .line 819
    sget-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 828
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 829
    :cond_15
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v0, p1, v1, p2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 820
    :cond_24
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    sget-object v1, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 824
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 820
    const-string v1, "@Path parameter name must match %s. Found: %s"

    invoke-static {v0, p1, v1, p2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private validateResolvableType(ILjava/lang/reflect/Type;)V
    .registers 5

    .line 812
    invoke-static {p2}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 813
    :cond_7
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Parameter type must not include a type variable or wildcard: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, v1, p2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method build()Lretrofit2/RequestFactory;
    .registers 9

    .line 180
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    .line 181
    invoke-direct {p0, v4}, Lretrofit2/RequestFactory$Builder;->parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 184
    :cond_f
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    if-eqz v0, :cond_ba

    .line 188
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    if-nez v0, :cond_36

    .line 189
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v0, :cond_2b

    .line 194
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v0, :cond_20

    goto :goto_36

    .line 195
    :cond_20
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 190
    :cond_2b
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 202
    :cond_36
    :goto_36
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    .line 203
    new-array v1, v0, [Lretrofit2/ParameterHandler;

    iput-object v1, p0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    add-int/lit8 v1, v0, -0x1

    move v3, v2

    :goto_40
    if-ge v3, v0, :cond_5a

    .line 205
    iget-object v4, p0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    iget-object v5, p0, Lretrofit2/RequestFactory$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    aget-object v5, v5, v3

    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    aget-object v6, v6, v3

    if-ne v3, v1, :cond_50

    const/4 v7, 0x1

    goto :goto_51

    :cond_50
    move v7, v2

    .line 206
    :goto_51
    invoke-direct {p0, v3, v5, v6, v7}, Lretrofit2/RequestFactory$Builder;->parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Z)Lretrofit2/ParameterHandler;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 209
    :cond_5a
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_72

    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-eqz v0, :cond_63

    goto :goto_72

    .line 210
    :cond_63
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Missing either @%s URL or @Url parameter."

    invoke-static {v0, v2, v1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 212
    :cond_72
    :goto_72
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v0, :cond_8e

    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v1, :cond_8e

    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    if-nez v1, :cond_8e

    iget-boolean v1, p0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    if-nez v1, :cond_83

    goto :goto_8e

    .line 213
    :cond_83
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Non-body HTTP method cannot contain @Body."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8e
    :goto_8e
    if-eqz v0, :cond_a0

    .line 215
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotField:Z

    if-eqz v0, :cond_95

    goto :goto_a0

    .line 216
    :cond_95
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Form-encoded method must contain at least one @Field."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 218
    :cond_a0
    :goto_a0
    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v0, :cond_b4

    iget-boolean v0, p0, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    if-eqz v0, :cond_a9

    goto :goto_b4

    .line 219
    :cond_a9
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Multipart method must contain at least one @Part."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 222
    :cond_b4
    :goto_b4
    new-instance v0, Lretrofit2/RequestFactory;

    invoke-direct {v0, p0}, Lretrofit2/RequestFactory;-><init>(Lretrofit2/RequestFactory$Builder;)V

    return-object v0

    .line 185
    :cond_ba
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
