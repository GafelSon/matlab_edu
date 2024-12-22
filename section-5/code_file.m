% Soheil Fouladvandi
% Section (5)

%{
RGB stands for Red, Green, and Blue, the primary colors of light.
In MATLAB, RGB is used to represent colors in images, plots, and graphical objects.
%}


% 1. RGB Color Representation
%  An RGB color is represented as a 3-element vector:
%  The first element represents the Red intensity.
%  The second element represents the Green intensity.
%  The third element represents the Blue intensity.
%  Each element's value typically ranges from:
%  0 to 1 (when normalized) or
%  0 to 255 (for 8-bit images).

% RGB Color Representation
red = [1, 0, 0];     % Pure red
green = [0, 1, 0];   % Pure green
blue = [0, 0, 1];    % Pure blue
white = [1, 1, 1];   % White (maximum intensity for all channels)
black = [0, 0, 0];   % Black (no intensity)

% 2. Creating and Visualizing RGB Colors
%  Using fill() or plot()
%  You can use RGB vectors to set colors in plots.
x = [1, 2, 3, 4];
y = [2, 4, 6, 8];
plot(x, y, 'Color', [0.5, 0, 0.5], 'LineWidth', 2);  % Purple color

%  Creating a Colored Patch:
x = [0, 1, 1, 0];
y = [0, 0, 1, 1];
fill(x, y, [0, 0.5, 1]);  % Light blue patch

% 3. Working with RGB Images
%  RGB images in MATLAB are stored as a 3D array:

%  The first two dimensions are the image height and width.
%  The third dimension has three slices (Red, Green, Blue channels).
%  Example: Create an RGB Image
redChannel = zeros(100, 100);          % No red
greenChannel = ones(100, 100);         % Full green
blueChannel = zeros(100, 100);         % No blue

RGBImage = cat(3, redChannel, greenChannel, blueChannel);
imshow(RGBImage);                      % Display green image


% 4. Extracting and Modifying Channels
%  You can extract or modify specific color channels.

%  Extracting Channels:
image = imread('peppers.png');  % Load an RGB image
redChannel = image(:, :, 1);    % Extract the red channel
greenChannel = image(:, :, 2);  % Extract the green channel
blueChannel = image(:, :, 3);   % Extract the blue channel

% Modifying Channels:
image(:, :, 1) = 0;  % Remove the red channel
imshow(image);       % Display the modified image

% 5. Converting Between Color Spaces
%  RGB can be converted to other color spaces, such as grayscale or HSV.

%  Convert to Grayscale:
image = imread('peppers.png');  
grayImage = rgb2gray(image);    % Convert to grayscale
imshow(grayImage);

%  Convert to HSV:
%    HSV (Hue, Saturation, Value) is another color model
hsvImage = rgb2hsv(image);      % Convert RGB to HSV
imshow(hsvImage);

% 6. Generating Colormaps
%   MATLAB provides colormaps to visualize data with varying colors.

%   Example: Use a Colormap
colormap('jet');        % Set the colormap to 'jet'
colorbar;               % Display colorbar

%   Creating Custom Colormaps:
myColormap = [0, 0, 1; 1, 0, 0; 0, 1, 0];  % Blue, Red, Green
colormap(myColormap);
colorbar;

%{
Comparison of rand() and randi()
 -----------------------------------------------------------------
| Function   | Description      
 -----------------------------------------------------------------
| imshow()   | Display an RGB image.
 -----------------------------------------------------------------
| rgb2gray() | Convert an RGB image to grayscale.
 -----------------------------------------------------------------
| rgb2hsv()  | Convert RGB to HSV color space.      
 -----------------------------------------------------------------
| cat()      | Concatenate matrices to create an RGB image.     
 -----------------------------------------------------------------
| ind2rgb()  | Convert indexed image to RGB.     
 -----------------------------------------------------------------
| imwrite()  | Save an RGB image.
 -----------------------------------------------------------------
| imread()   | Read an RGB image.
 -----------------------------------------------------------------
%}


% 8. Example: Blend Two Images
%    Blend two RGB images by averaging their pixel values.
image1 = imread('peppers.png');
image2 = imread('cameraman.tif');  % Convert grayscale to RGB
image2 = cat(3, image2, image2, image2);

blendedImage = (double(image1) + double(image2)) / 2;
blendedImage = uint8(blendedImage);  % Convert back to uint8
imshow(blendedImage);



